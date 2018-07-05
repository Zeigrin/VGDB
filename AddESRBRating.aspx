<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/VGDB.Master" CodeBehind="AddESRBRating.aspx.cs" Inherits="VGDB.AddESRBRating" %>

<asp:Content ID="Page" ContentPlaceHolderID="Content" Runat="Server">
    <h1>Add an ESRB Rating.</h1>
    <br />
    <asp:Label ID="LBLESRBRating" runat="server" Text="ESRB Rating:" Width="15%"></asp:Label>
    <asp:TextBox ID="TXTESRBRating" runat="server" Width="80%"></asp:TextBox>
    <asp:RequiredFieldValidator
        ID="VALIDRatingName"
        Runat="server"
        ControlToValidate="TXTESRBRating"
        Display="Dynamic"
        ErrorMessage="*Please provide a Rating Name."
        ForeColor="red">
    </asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="LBLESRBDesc" runat="server" Text="Rating Description:" Width="15%"></asp:Label>
    <asp:TextBox ID="TXTESRBDesc" runat="server" Width="80%"></asp:TextBox>
    <asp:RequiredFieldValidator
        ID="VALIDRatingDescription"
        Runat="server"
        ControlToValidate="TXTESRBDesc"
        Display="Dynamic"
        ErrorMessage="*Please provide a Rating Description"
        ForeColor="red">
    </asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Button ID="BTNSubmit" runat="server" Text="Submit ESRB Rating" OnClick="BTNSubmit_Click" />
</asp:Content>
