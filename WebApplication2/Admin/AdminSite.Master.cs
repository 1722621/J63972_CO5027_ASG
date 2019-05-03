using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.Admin
{
    public partial class AdminSite : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                signUp.Visible = false;
                logIn.Visible = false;
                logOut.Visible = true;
            }
            else
            {
                signUp.Visible = true;
                logIn.Visible = true;
                logOut.Visible = false;
            }
        }
    }
}