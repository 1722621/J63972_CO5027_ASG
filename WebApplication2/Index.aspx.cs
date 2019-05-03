using PayPal.Api;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label lblQuantity = (Label)e.Item.FindControl("lblQuantity");
                string s = lblQuantity.Text;

                if (s == "0")
                {
                    e.Item.Visible = false;
                }
            }
        }
    }
}