using System;
using System.Collections.Generic;
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
            string filename = productId + ".jpg";

            //note that this is missing alternate text and dimensions
            CurrentImage.ImageUrl = "~/images/" + filename;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //get the id from the query string (keeping it as a string is OK in this case)
            string productId = Request.QueryString["Id"];

            string filename = productId + ".jpg";
            string saveLocation = Server.MapPath("~/images/" + filename);

            imageFileUploadControl.SaveAs(saveLocation);
        }
    }
}