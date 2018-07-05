<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/VGDB.Master" CodeBehind="AddPublisher.aspx.cs" Inherits="VGDB.AddPublisher" %>

<asp:Content ID="Page" ContentPlaceHolderID="Content" Runat="Server">
    <h1>Add a Publisher</h1>
    <br />
    <asp:Label ID="LBLPublisherName" runat="server" Text="Publisher Name:" Width="15%"></asp:Label>
    <asp:TextBox ID="TXTPublisherName" runat="server" Width="80%"></asp:TextBox>
    <asp:RequiredFieldValidator
        ID="VALIDPublisherName"
        Runat="server"
        ControlToValidate="TXTPublisherName"
        Display="Dynamic"
        ErrorMessage="*Please provide a Publisher Name."
        ForeColor="red">
    </asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="LBLPublisherInfo" runat="server" Text="Publisher Information:" Width="15%"></asp:Label>
    <asp:TextBox ID="TXTPublisherInfo" runat="server" Width="80%" Height="200px" TextMode="MultiLine"></asp:TextBox>
    <asp:RequiredFieldValidator
        ID="VALIDPublisherInfo"
        Runat="server"
        ControlToValidate="TXTPublisherInfo"
        Display="Dynamic"
        ErrorMessage="*Please provide Publisher Information."
        ForeColor="red">
    </asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="LBLPublisherFounding" runat="server" Text="Publisher Founding Date:" Width="15%"></asp:Label>
    <asp:DropDownList ID="DDLPubFounded" runat="server" Width="80%"></asp:DropDownList>
    <br />
    <br />
    <asp:Button ID="BTNSubmit" runat="server" Text="Submit Publisher" OnClick="BTNSubmit_Click" />
</asp:Content>
