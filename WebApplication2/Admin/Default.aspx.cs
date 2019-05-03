using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.Admin
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbInsert_Click(object sender, EventArgs e)
        {
            ProductDataSource.InsertParameters["Name"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("insertName")).Text;

            ProductDataSource.InsertParameters["Description"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("insertDescription")).Text;

            ProductDataSource.InsertParameters["Quantity"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("insertQuantity")).Text;

            ProductDataSource.InsertParameters["Price"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("insertPrice")).Text;

            ProductDataSource.Insert();
        }
    }
}