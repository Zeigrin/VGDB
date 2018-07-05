<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/VGDB.Master" CodeBehind="EditDevelopers.aspx.cs" Inherits="VGDB.EditDevelopers" %>

<asp:Content ID="Page" ContentPlaceHolderID="Content" Runat="Server">
    <h1>Edit Developers.</h1>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="DeveloperID" DataSourceID="DeveloperData" Width="100%">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="DeveloperID" HeaderText="DeveloperID" InsertVisible="False" ReadOnly="True" SortExpression="DeveloperID" />
            <asp:BoundField DataField="DeveloperName" HeaderText="DeveloperName" SortExpression="DeveloperName" />
            <asp:BoundField DataField="DevInfo" HeaderText="DevInfo" SortExpression="DevInfo" />
            <asp:BoundField DataField="FoundingYear" HeaderText="FoundingYear" SortExpression="FoundingYear" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="DeveloperData" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Developer] WHERE [DeveloperID] = @DeveloperID" InsertCommand="INSERT INTO [Developer] ([DeveloperName], [DevInfo], [FoundingYear]) VALUES (@DeveloperName, @DevInfo, @FoundingYear)" SelectCommand="SELECT * FROM [Developer]" UpdateCommand="UPDATE [Developer] SET [DeveloperName] = @DeveloperName, [DevInfo] = @DevInfo, [FoundingYear] = @FoundingYear WHERE [DeveloperID] = @DeveloperID">
        <DeleteParameters>
            <asp:Parameter Name="DeveloperID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="DeveloperName" Type="String" />
            <asp:Parameter Name="DevInfo" Type="String" />
            <asp:Parameter Name="FoundingYear" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="DeveloperName" Type="String" />
            <asp:Parameter Name="DevInfo" Type="String" />
            <asp:Parameter Name="FoundingYear" Type="Int32" />
            <asp:Parameter Name="DeveloperID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>