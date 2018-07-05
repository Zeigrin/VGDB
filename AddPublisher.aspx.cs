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
    public partial class AddPublisher : System.Web.UI.Page
    {
        //Global Variables
        //Delete this later int StartingYear = 1970;
        int EndingYear = DateTime.Now.Year + 1;
        int YearCounter = 1970;

        protected void Page_Load(object sender, EventArgs e)
        {
            LoginCheck();
            DDLPopulate();
        }

        public void DDLPopulate()
        {
            while (YearCounter < EndingYear)
            {
                DDLPubFounded.Items.Add(YearCounter.ToString());
                YearCounter++;
            }
        }

        protected void BTNSubmit_Click(object sender, EventArgs e)
        {
            string PublisherName = TXTPublisherName.Text.ToString();
            string PublisherInfo = TXTPublisherInfo.Text.ToString();
            int FoundingYear = Convert.ToInt32(DDLPubFounded.SelectedItem.Value);

            using (var conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            using (var command = new SqlCommand("AddPublisher", conn) { CommandType = CommandType.StoredProcedure })
            {
                command.Parameters.Add("@V_PublisherName", SqlDbType.VarChar).Value = PublisherName;
                command.Parameters.Add("@V_PublisherInfo", SqlDbType.VarChar).Value = PublisherInfo;
                command.Parameters.Add("@V_PublisherFoundingYear", SqlDbType.Int).Value = FoundingYear;

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
