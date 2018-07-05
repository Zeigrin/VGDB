using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

namespace VGDB
{
    public partial class AddESRBRating : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoginCheck();
        }

        protected void BTNSubmit_Click(object sender, EventArgs e)
        {
            string RatingName = TXTESRBRating.Text;
            string RatingDesc = TXTESRBDesc.Text;

            using (var conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            using (var command = new SqlCommand("AddRating", conn) { CommandType = CommandType.StoredProcedure })
            {
                command.Parameters.Add("@V_RatingName", SqlDbType.VarChar).Value = RatingName;
                command.Parameters.Add("@V_RatingDesc", SqlDbType.VarChar).Value = RatingDesc;

                conn.Open();
                command.ExecuteNonQuery();
                Response.Redirect("Success.aspx");
            }
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