<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/VGDB.Master" CodeBehind="EditPublishers.aspx.cs" Inherits="VGDB.EditPublishers" %>

<asp:Content ID="Page" ContentPlaceHolderID="Content" Runat="Server">
    <h1>Edit Publishers.</h1>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="PublisherID" DataSourceID="PublisherData" Width="100%">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="PublisherID" HeaderText="PublisherID" InsertVisible="False" ReadOnly="True" SortExpression="PublisherID" />
            <asp:BoundField DataField="PublisherName" HeaderText="PublisherName" SortExpression="PublisherName" />
            <asp:BoundField DataField="PublisherInfo" HeaderText="PublisherInfo" SortExpression="PublisherInfo" />
            <asp:BoundField DataField="FoundingYear" HeaderText="FoundingYear" SortExpression="FoundingYear" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="PublisherData" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Publishers] WHERE [PublisherID] = @PublisherID" InsertCommand="INSERT INTO [Publishers] ([PublisherName], [PublisherInfo], [FoundingYear]) VALUES (@PublisherName, @PublisherInfo, @FoundingYear)" SelectCommand="SELECT * FROM [Publishers]" UpdateCommand="UPDATE [Publishers] SET [PublisherName] = @PublisherName, [PublisherInfo] = @PublisherInfo, [FoundingYear] = @FoundingYear WHERE [PublisherID] = @PublisherID">
        <DeleteParameters>
            <asp:Parameter Name="PublisherID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PublisherName" Type="String" />
            <asp:Parameter Name="PublisherInfo" Type="String" />
            <asp:Parameter Name="FoundingYear" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PublisherName" Type="String" />
            <asp:Parameter Name="PublisherInfo" Type="String" />
            <asp:Parameter Name="FoundingYear" Type="Int32" />
            <asp:Parameter Name="PublisherID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>