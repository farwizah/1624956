using Microsoft.Owin.Security;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace kstarlightBN
{
    
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser> (userStore);
            var user = new IdentityUser() { UserName = TxtEmail.Text, Email = TxtEmail.Text };
            IdentityResult result = manager.Create(user, TxtPswd.Text);
            if (result.Succeeded)
            {
                RegisterError.Text = "Register Success";
            }
            else
            {
                RegisterError.Text = "An error has occured: " + result.Errors.FirstOrDefault();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(TxtUsername.Text, TxtPassword.Text);
            if (user != null)
            {
                LoginError.Text = "You has been login";
            }
            else
            {
                LoginError.Text = "Invalid username or password";
            }
        }

                 private void LogUserIn(UserManager<IdentityUser> usermanager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new Microsoft.Owin.Security.AuthenticationProperties() { }, userIdentity);
        }


    }
        }



 
