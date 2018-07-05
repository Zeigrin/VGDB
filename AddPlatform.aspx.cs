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
    public partial class AddPlatform : System.Web.UI.Page
    {
        //Global Variables
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
                DDLYearLaunched.Items.Add(YearCounter.ToString());
                YearCounter++;
            }
        }

        protected void BTNSubmit_Click(object sender, EventArgs e)
        {
            string GamePlatformName = TXTGamePlatform.Text.ToString();
            string PlatformInfo = TXTPlatformInfo.Text.ToString();
            int FoundingYear = Convert.ToInt32(DDLYearLaunched.SelectedItem.Value);
            string PlatformManufacturer = DDLManufacturer.SelectedValue.ToString();

            using (var conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            using (var command = new SqlCommand("AddGamePlatform", conn) { CommandType = CommandType.StoredProcedure })
            {
                command.Parameters.Add("@V_PlatformName", SqlDbType.VarChar).Value = GamePlatformName;
                command.Parameters.Add("@V_PlatformInfo", SqlDbType.VarChar).Value = PlatformInfo;
                command.Parameters.Add("@V_PlatformLaunchYear", SqlDbType.Int).Value = FoundingYear;
                command.Parameters.Add("@V_PlatformManufacturer", SqlDbType.VarChar).Value = PlatformManufacturer;

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