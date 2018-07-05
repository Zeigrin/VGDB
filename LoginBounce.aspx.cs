using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VGDB
{
    public partial class LoginBounce : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (User.Identity.IsAuthenticated == false)
                {
                    //if the user is not logged in bounce them back to the login page.
                }
            }
        }
    }
}