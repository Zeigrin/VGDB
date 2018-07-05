<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/VGDB.Master" CodeBehind="Login.aspx.cs" Inherits="VGDB.Login" %>

<asp:Content ID="Page" ContentPlaceHolderID="Content" Runat="Server">
    <div>
         <h4 style="font-size: medium">Log In</h4>
         <hr />
         <asp:PlaceHolder runat="server" ID="LoginStatus" Visible="false">
            <p>
               <asp:Literal runat="server" ID="StatusText" />
            </p>
         </asp:PlaceHolder>
         <asp:PlaceHolder runat="server" ID="LoginForm" Visible="false">
            <div style="margin-bottom: 10px">
               <asp:Label runat="server" AssociatedControlID="UserName">User name</asp:Label>
               <div>
                  <asp:TextBox runat="server" ID="UserName" />
               </div>
            </div>
            <div style="margin-bottom: 10px">
               <asp:Label runat="server" AssociatedControlID="Password">Password</asp:Label>
               <div>
                  <asp:TextBox runat="server" ID="Password" TextMode="Password" />
               </div>
            </div>
            <div style="margin-bottom: 10px">
               <div>
                  <asp:Button runat="server" OnClick="SignIn" Text="Log in" />
                   <a href="Register.aspx"><p>Don't have an account? get one here!</p></a>
               </div>
            </div>
         </asp:PlaceHolder>

        <asp:PlaceHolder runat="server" ID="UserPanel" Visible="false">
            <div>
               <div>
                   <h1>Add Entree to Database</h1>
                   <ul>
                       <li><a href="AddDeveloper.aspx">Add a Developer</a></li>
                       <li><a href="AddPublisher.aspx">Add a Publisher</a></li>
                       <li><a href="AddPlatform.aspx">Add a Platform</a></li>
                       <li><a href="AddGenre.aspx">Add a Genre</a></li>
                       <li><a href="AddESRBRating.aspx">Add an ESRB Rating</a></li>
                       <li><a href="AddGame.aspx">Add a Game</a></li>
                   </ul>

                   <h1>Edit Database Content</h1>
                   <ul>
                       <li><a href="EditDevelopers.aspx">Edit Developers</a></li>
                       <li><a href="EditPublishers.aspx">Edit Publishers</a></li>
                       <li><a href="EditPlatforms.aspx">Edit Platforms</a></li>
                       <li><a href="EditGenres.aspx">Edit Genres</a></li>
                       <li><a href="EditRatings.aspx">Edit ESRB Ratings</a></li>
                       <li><a href="EditGames.aspx">Edit Games</a></li>
                   </ul>
               </div>
            </div>
         </asp:PlaceHolder>

         <asp:PlaceHolder runat="server" ID="LogoutButton" Visible="false">
            <div>
               <div>
                  <asp:Button runat="server" OnClick="SignOut" Text="Log out" />
               </div>
            </div>
         </asp:PlaceHolder>

      </div>
</asp:Content>