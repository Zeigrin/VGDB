using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

namespace VGDB
{
    public partial class EditGames : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoginCheck();
        }

        public void LoginCheck()
        {
            string LoggedInUser = User.Identity.GetUserId();

            if (LoggedInUser == null)
            {
                Response.Redirect("LoginBounce.aspx");
            }
        }
    }
}