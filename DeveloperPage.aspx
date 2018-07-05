<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/VGDB.Master" CodeBehind="DeveloperPage.aspx.cs" Inherits="VGDB.DeveloperPage" %>

<asp:Content ID="Page" ContentPlaceHolderID="Content" Runat="Server">
    <h1>Developers</h1>

    <asp:DataList ID="DataList1" runat="server" DataSourceID="DeveloperData" Width="100%">
        <ItemTemplate>
            <b>DeveloperName:</b>
            <asp:Label ID="DeveloperNameLabel" runat="server" Text='<%# Eval("DeveloperName") %>' />
            <br />
            <br />
            <b>DevInfo:</b>
            <asp:Label ID="DevInfoLabel" runat="server" Text='<%# Eval("DevInfo") %>' />
            <br />
            <br />
            <b>FoundingYear:</b>
            <asp:Label ID="FoundingYearLabel" runat="server" Text='<%# Eval("FoundingYear") %>' />
            <br />
            <hr />
<br />
        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource ID="DeveloperData" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [DeveloperName], [DevInfo], [FoundingYear] FROM [Developer] ORDER BY [DeveloperName]"></asp:SqlDataSource>

</asp:Content>