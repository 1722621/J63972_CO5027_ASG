using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //create filename using query string
            string productId = Request.QueryString["Id"];

            string path = Server.MapPath("~/images/");
            string existingFile = Directory.EnumerateFiles(path, productId + ".*").FirstOrDefault();

            string extension = Path.GetExtension(existingFile).ToLower();
            string filename = productId + extension;

            //note that this is missing alternate text and dimensions
            CurrentImage.ImageUrl = "~/images/" + filename;
        }
    }
}