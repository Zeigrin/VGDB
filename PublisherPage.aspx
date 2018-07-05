<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/VGDB.Master" CodeBehind="PublisherPage.aspx.cs" Inherits="VGDB.PublisherPage" %>

<asp:Content ID="Page" ContentPlaceHolderID="Content" Runat="Server">
    <h1>Publishers.</h1>
    <asp:DataList ID="DataList1" runat="server" CellSpacing="1" DataSourceID="PublisherData" Width="100%">
        <ItemTemplate>
            <b>PublisherName:</b>
            <asp:Label ID="PublisherNameLabel" runat="server" Text='<%# Eval("PublisherName") %>' />
            <br />
            <br />
            <b>PublisherInfo:</b>
            <asp:Label ID="PublisherInfoLabel" runat="server" Text='<%# Eval("PublisherInfo") %>' />
            <br />
            <br />
            <b>FoundingYear:</b>
            <asp:Label ID="FoundingYearLabel" runat="server" Text='<%# Eval("FoundingYear") %>' />
            <br />
            <hr />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="PublisherData" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [PublisherName], [PublisherInfo], [FoundingYear] FROM [Publishers] ORDER BY [PublisherName]"></asp:SqlDataSource>
</asp:Content>