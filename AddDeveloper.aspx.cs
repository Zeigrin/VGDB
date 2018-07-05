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
    public partial class AddDeveloper : System.Web.UI.Page
    {
        //Global Variables
        //Delete this later int StartingYear = 1970;
        int EndingYear = DateTime.Now.Year+1;
        int YearCounter = 1970;

        protected void Page_Load(object sender, EventArgs e)
        {
            LoginCheck();
            DDLPopulate();
        }

        protected void BTNSubmit_Click(object sender, EventArgs e)
        {
            string DevName = TXTDevName.Text;
            string DevInfo= TXTDevInfo.Text;
            int FoundingYear= Convert.ToInt32(DDLYear.SelectedItem.Value);

            using (var conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            using (var command = new SqlCommand("AddDeveloper", conn){ CommandType = CommandType.StoredProcedure })
            {
                command.Parameters.Add("@V_DeveloperName", SqlDbType.VarChar).Value = DevName;
                command.Parameters.Add("@V_DeveloperInfo", SqlDbType.VarChar).Value = DevInfo;
                command.Parameters.Add("@V_DeveloperFoundingYear", SqlDbType.Int).Value = FoundingYear;

                conn.Open();
                command.ExecuteNonQuery();
                Response.Redirect("Success.aspx");
            }
        }

        public void DDLPopulate()
        {
            while (YearCounter < EndingYear)
            {
                DDLYear.Items.Add(YearCounter.ToString());
                YearCounter++;
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