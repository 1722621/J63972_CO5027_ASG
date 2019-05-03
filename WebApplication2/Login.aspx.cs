using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");

            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);

            var user = userManager.Find(Request["username"], Request["password"]);
            String userRoles = userManager.GetRoles(user.Id).FirstOrDefault();
            if (user != null)
            {
                LogUserIn(userManager, user);
                if (userRoles.Equals("admin"))
                {
                    Response.Redirect("Admin/Default.aspx");
                }
                else if (userRoles.Equals("user"))
                {
                    Response.Redirect("Index.aspx");
                }

                litLoginError.Text = "Login Successful.";
            }
            else
            {
                litLoginError.Text = "Invalid username or password.";
            }
        }

        private void LogUserIn(UserManager<IdentityUser> usermanager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
            //Note: user is automatically redirected if trying to access another page
        }
    }
}