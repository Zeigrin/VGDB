<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/VGDB.Master" CodeBehind="GamesPage.aspx.cs" Inherits="VGDB.GamesPage" %>

<asp:Content ID="Page" ContentPlaceHolderID="Content" Runat="Server">
    <h1>Games</h1>

    <asp:DataList ID="DataList1" runat="server" DataSourceID="GameData">
        <ItemTemplate>
            <b>GameTitle:</b>
            <asp:Label ID="GameTitleLabel" runat="server" Text='<%# Eval("GameTitle") %>' />
            <br />
            <br />
            <b>GameSynopsis:</b>
            <asp:Label ID="GameSynopsisLabel" runat="server" Text='<%# Eval("GameSynopsis") %>' />
            <br />
            <br />
            <b>DeveloperName:</b>
            <asp:Label ID="DeveloperNameLabel" runat="server" Text='<%# Eval("DeveloperName") %>' />
            <br />
            <br />
            <b>PublisherName:</b>
            <asp:Label ID="PublisherNameLabel" runat="server" Text='<%# Eval("PublisherName") %>' />
            <br />
            <br />
            <b>RatingName:</b>
            <asp:Label ID="RatingNameLabel" runat="server" Text='<%# Eval("RatingName") %>' />
            <br />
            <br />
            <b>GenreName:</b>
            <asp:Label ID="GenreNameLabel" runat="server" Text='<%# Eval("GenreName") %>' />
            <br />
            <br />
            <b>PlatformName:</b>
            <asp:Label ID="PlatformNameLabel" runat="server" Text='<%# Eval("PlatformName") %>' />
            <br />
            <hr />
<br />
        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource ID="GameData" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SelectVideoGame" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

</asp:Content>