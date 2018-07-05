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
    public partial class AddGame : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoginCheck();
        }

        protected void BTNSubmit_Click(object sender, EventArgs e)
        {
            string GameName = TXTGameTitle.Text;
            string GameSynopsis = TXTGameSynopsis.Text;
            int GameGenre = Convert.ToInt32(DDLGenre.SelectedValue);
            int GamePlatform = Convert.ToInt32(DDLGamePlatforms.SelectedValue);
            int GameDeveloper = Convert.ToInt32(DDLDeveloper.SelectedValue);
            int GamePublisher = Convert.ToInt32(DDLPublisher.SelectedValue);
            int GameESRB = Convert.ToInt32(DDLESRBRating.SelectedValue);


            using (var conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            using (var command = new SqlCommand("AddVideoGame", conn) { CommandType = CommandType.StoredProcedure })
            {
                command.Parameters.Add("@V_GameName", SqlDbType.VarChar).Value = GameName;
                command.Parameters.Add("@V_GameSynopsis", SqlDbType.VarChar).Value = GameSynopsis;
                command.Parameters.Add("@V_FK_GenreID", SqlDbType.Int).Value = GameGenre;
                command.Parameters.Add("@V_FK_PlatformID", SqlDbType.VarChar).Value = GamePlatform;
                command.Parameters.Add("@V_FK_DeveloperID", SqlDbType.VarChar).Value = GameDeveloper;
                command.Parameters.Add("@V_FK_PublisherID", SqlDbType.VarChar).Value = GamePublisher;
                command.Parameters.Add("@V_FK_RatingID", SqlDbType.VarChar).Value = GameESRB;

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