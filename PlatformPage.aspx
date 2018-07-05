<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/VGDB.Master" CodeBehind="PlatformPage.aspx.cs" Inherits="VGDB.PlatformPage" %>

<asp:Content ID="Page" ContentPlaceHolderID="Content" Runat="Server">
    <h1>Platforms</h1>

    <asp:DataList ID="DataList1" runat="server" DataSourceID="PlatformData" Width="100%">
        <ItemTemplate>
            <b>PlatformName:</b>
            <asp:Label ID="PlatformNameLabel" runat="server" Text='<%# Eval("PlatformName") %>' />
            <br />
            <br />
            <b>PlatformManufacturer:</b>
            <asp:Label ID="PlatformManufacturerLabel" runat="server" Text='<%# Eval("PlatformManufacturer") %>' />
            <br />
            <br />
            <b>PlatformInfo:</b>
            <asp:Label ID="PlatformInfoLabel" runat="server" Text='<%# Eval("PlatformInfo") %>' />
            <br />
            <br />
            <b>PlatformLaunchYear:</b>
            <asp:Label ID="PlatformLaunchYearLabel" runat="server" Text='<%# Eval("PlatformLaunchYear") %>' />
            <br />
            <hr />
            <br />
        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource ID="PlatformData" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [PlatformName], [PlatformManufacturer], [PlatformInfo], [PlatformLaunchYear] FROM [GamingPlatform] ORDER BY [PlatformName]"></asp:SqlDataSource>

</asp:Content>