using System;
using System.Threading.Tasks;
using Microsoft.Owin;
using Microsoft.Owin.Security.Cookies;
using Microsoft.AspNet.Identity;
using Owin;

[assembly: OwinStartup(typeof(WebApplication2.Startup1))]

namespace WebApplication2
{
    public class Startup1
    {
        public void Configuration(IAppBuilder app)
        {
            app.UseCookieAuthentication(new CookieAuthenticationOptions
            {
                AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie,
                LoginPath = new PathString("/Login.aspx")
            });
        }
    }
}
