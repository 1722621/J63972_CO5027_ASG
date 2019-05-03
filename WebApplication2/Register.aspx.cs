using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace WebApplication2
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            //create a dbcontext that specified the connection string
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");

            //create user store and user manager
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            //create role store and role manager
            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);
            IdentityRole userRole = new IdentityRole("user");
            roleManager.Create(userRole);

            // create user
            var user = new IdentityUser() { UserName = Request["username"], Email = Request["email"] };
            IdentityResult result = manager.Create(user, Request["password"]);
            if (result.Succeeded)
            {
                manager.AddToRole(user.Id, "user");
                manager.Update(user);
                litRegisterError.Text = "Success";
            }
            else
            {
                litRegisterError.Text = "An error has occured: " + result.Errors.FirstOrDefault();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            
        }
    }
}