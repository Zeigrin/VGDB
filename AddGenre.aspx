<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/VGDB.Master" CodeBehind="AddGenre.aspx.cs" Inherits="VGDB.AddGenre" %>

<asp:Content ID="Page" ContentPlaceHolderID="Content" Runat="Server">
    <h1>Add Genre</h1>
    <br />
    <asp:Label ID="LBLGenreName" runat="server" Text="Genre Name:" Width="15%"></asp:Label>
    <asp:TextBox ID="TXTGenreName" runat="server" Width="80%"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="LBLGenreDesc" runat="server" Text="Genre Description:" Width="15%"></asp:Label>
    <asp:TextBox ID="TXTGenreDesc" runat="server" Width="80%"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="BTNSubmit" runat="server" Text="Submit Genre" OnClick="BTNSubmit_Click" />
</asp:Content>