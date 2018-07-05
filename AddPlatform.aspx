<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/VGDB.Master" CodeBehind="AddPlatform.aspx.cs" Inherits="VGDB.AddPlatform" %>

<asp:Content ID="Page" ContentPlaceHolderID="Content" Runat="Server">
    <h1>Add a game to the database.</h1>
    <asp:Label ID="LBLPlatform" runat="server" Text="Platform Name:" Width="15%"></asp:Label>
    <asp:TextBox ID="TXTGamePlatform" runat="server" Width="80%"></asp:TextBox>
    <asp:RequiredFieldValidator
        ID="VALIDDevPlatformName"
        Runat="server"
        ControlToValidate="TXTGamePlatform"
        Display="Dynamic"
        ErrorMessage="*Please provide a Platform Name"
        ForeColor="red">
    </asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="LBLPlatformInfo" runat="server" Text="Platform Information:" Width="15%"></asp:Label>
    <asp:TextBox ID="TXTPlatformInfo" runat="server" Width="80%" Height="200px" TextMode="MultiLine"></asp:TextBox>
    <asp:RequiredFieldValidator
        ID="VALIDPlatformInfo"
        Runat="server"
        ControlToValidate="TXTPlatformInfo"
        Display="Dynamic"
        ErrorMessage="*Please provide Platform Information."
        ForeColor="red">
    </asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="LBLLaunchDate" runat="server" Text="Year Launched:" Width="15%"></asp:Label>
    <asp:DropDownList ID="DDLYearLaunched" runat="server" Width="80%"></asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="LBLConsoleManufacturer" runat="server" Text="Platform Manufacturer:" Width="15%"></asp:Label>
    <asp:DropDownList ID="DDLManufacturer" runat="server" Width="80%" DataSourceID="VGDB" DataTextField="ManufacturerName" DataValueField="ManufacturerName"></asp:DropDownList>
    <asp:SqlDataSource ID="VGDB" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [ManufacturerName] FROM [PlatformManufacturer]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Button ID="BTNSubmit" runat="server" Text="Submit" Width="100%" OnClick="BTNSubmit_Click" />
</asp:Content>
