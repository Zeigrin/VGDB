<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/VGDB.Master" CodeBehind="AddGame.aspx.cs" Inherits="VGDB.AddGame" %>

<asp:Content ID="Page" ContentPlaceHolderID="Content" Runat="Server">
    <h1>Add a game to the database.</h1>
    <asp:Label ID="LBLGameTitle" runat="server" Text="Game Title:" Width="15%"></asp:Label>
    <asp:TextBox ID="TXTGameTitle" runat="server" Width="80%"></asp:TextBox>
    <asp:RequiredFieldValidator
        ID="VALIDGameTitle"
        Runat="server"
        ControlToValidate="TXTGameTitle"
        Display="Dynamic"
        ErrorMessage="*Please provide a Game Title"
        ForeColor="red">
    </asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="LBLGameSynopsis" runat="server" Text="Game Synopsis:" Width="15%"></asp:Label>
    <asp:TextBox ID="TXTGameSynopsis" runat="server" Width="80%"></asp:TextBox>
    <asp:RequiredFieldValidator
        ID="VALIDGameSynopsis"
        Runat="server"
        ControlToValidate="TXTGameSynopsis"
        Display="Dynamic"
        ErrorMessage="*Please provide a Game Synopsis"
        ForeColor="red">
    </asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="LBLGenre" runat="server" Text="Game Genre:" Width="15%"></asp:Label>
    <asp:DropDownList ID="DDLGenre" runat="server" Width="80%" DataSourceID="VGDB" DataTextField="GenreName" DataValueField="GenreID"></asp:DropDownList>
    <asp:SqlDataSource ID="VGDB" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [GenreID], [GenreName] FROM [Genre]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="LBLGamePlatform" runat="server" Text="Game Platform:" Width="15%"></asp:Label>
    <asp:DropDownList ID="DDLGamePlatforms" runat="server" Width="80%" DataSourceID="GamePlatform" DataTextField="PlatformName" DataValueField="PlatformID"></asp:DropDownList>
    <asp:SqlDataSource ID="GamePlatform" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [PlatformID], [PlatformName] FROM [GamingPlatform]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="LBLGameDeveloper" runat="server" Text="Game Developer:" Width="15%"></asp:Label>
    <asp:DropDownList ID="DDLDeveloper" runat="server" Width="80%" DataSourceID="Developer" DataTextField="DeveloperName" DataValueField="DeveloperID"></asp:DropDownList>
    <asp:SqlDataSource ID="Developer" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [DeveloperName], [DeveloperID] FROM [Developer]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="LBLPublisher" runat="server" Text="Game Publisher:" Width="15%"></asp:Label>
    <asp:DropDownList ID="DDLPublisher" runat="server" Width="80%" DataSourceID="GamePublisher" DataTextField="PublisherName" DataValueField="PublisherID" ></asp:DropDownList>

    <asp:SqlDataSource ID="GamePublisher" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [PublisherID], [PublisherName] FROM [Publishers]"></asp:SqlDataSource>

    <br />
    <br />
    <asp:Label ID="LBLESRBRating" runat="server" Text="ESRB Rating:" Width="15%"></asp:Label>
    <asp:DropDownList ID="DDLESRBRating" runat="server" Width="80%" DataSourceID="ESRB" DataTextField="RatingName" DataValueField="RatingID"></asp:DropDownList>
    <asp:SqlDataSource ID="ESRB" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [RatingID], [RatingName] FROM [ESRBRating]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Button ID="BTNSubmit" runat="server" Text="Submit" Width="100%" OnClick="BTNSubmit_Click" />
</asp:Content>
