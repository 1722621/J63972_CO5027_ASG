using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class UploadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //create filename using query string
            string productId = Request.QueryString["Id"];

            string path = Server.MapPath("~/images/");
            string existingFile = Directory.EnumerateFiles(path, productId + ".*").FirstOrDefault();

            string extension = (System.IO.Path.GetExtension(existingFile).ToLower());
            string filename = productId + extension;

            //note that this is missing alternate text and dimensions
            CurrentImage.ImageUrl = "~/images/" + filename;
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["IdentityConnectionString"].ConnectionString);
            connection.Open();

            //get the extension of our image file
            string extension = (System.IO.Path.GetExtension(imageFileUploadControl.FileName).ToLower());
            //check the extension is valid
            if (extension == ".jpg" || extension == ".jpeg" || extension == ".png" || extension == ".gif")
            {
                //get the id from the query string (keeping it as a string is OK in this case)
                string productId = Request.QueryString["Id"];

                string filename = productId + extension;

                string saveLocation = Server.MapPath("~/images/" + filename);

                string path = Server.MapPath("~/images/");
                string existingFile = Directory.EnumerateFiles(path, productId + ".*").FirstOrDefault();

                if (System.IO.File.Exists(existingFile))
                {
                    System.IO.File.Delete(existingFile);
                }

                imageFileUploadControl.SaveAs(saveLocation);
                CurrentImage.ImageUrl = "~/images/" + filename;
                lblUpload.Text = "Upload Succesful, your file was uploaded as " + filename + " in the images folder";
                lblUpload.ForeColor = Color.Green;

                string sqlQuery1 = "UPDATE [dbo].[Table] SET ImagePath = '" + filename + "' WHERE Id = " + int.Parse(productId) + "";

                SqlCommand cmd = new SqlCommand(sqlQuery1, connection);
                cmd.ExecuteNonQuery();

                connection.Close();
            }
            else
            {
                lblUpload.Text = "Please upload only .jpg/.jpeg/.png/.gif files";
                lblUpload.ForeColor = Color.Red;
            }
        }
    }
}