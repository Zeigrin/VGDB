<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/VGDB.Master" CodeBehind="AddDeveloper.aspx.cs" Inherits="VGDB.AddDeveloper" %>

<asp:Content ID="Page" ContentPlaceHolderID="Content" Runat="Server">
    <h1>Main content.</h1>
    <br />
    <asp:Label ID="LBLDevName" runat="server" Text="Developer Name:" Width="15%"></asp:Label>
    <asp:TextBox ID="TXTDevName" runat="server" Width="80%"></asp:TextBox>

    <asp:RequiredFieldValidator
        ID="VALIDDevName"
        Runat="server"
        ControlToValidate="TXTDevName"
        Display="Dynamic"
        ErrorMessage="*Please provide a Developer Name"
        ForeColor="red">
    </asp:RequiredFieldValidator>

    <br />
    <br />
    <asp:Label ID="LBLDevInfo" runat="server" Text="Developer Information:" Width="15%"></asp:Label>
    <asp:TextBox ID="TXTDevInfo" runat="server" Width="80%" Height="200px" TextMode="MultiLine"></asp:TextBox>

    <asp:RequiredFieldValidator
        ID="VALIDDevInfo"
        Runat="server"
        ControlToValidate="TXTDevInfo"
        Display="Dynamic"
        ErrorMessage="*Please provide Developer Information"
        ForeColor="red">
    </asp:RequiredFieldValidator>

    <br />
    <br />
    <asp:Label ID="LBLDevFounding" runat="server" Text="Developer Founding Year:" Width="15%"></asp:Label>
    <asp:DropDownList ID="DDLYear" runat="server" Width="80%">
    </asp:DropDownList>
    <br />
    <br />
    <asp:Button ID="BTNSubmit" runat="server" Text="Submit Developer" OnClick="BTNSubmit_Click" />


</asp:Content>
