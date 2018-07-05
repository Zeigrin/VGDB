<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/VGDB.Master" CodeBehind="EditGenres.aspx.cs" Inherits="VGDB.EditGenres" %>

<asp:Content ID="Page" ContentPlaceHolderID="Content" Runat="Server">
    <h1>Edit Genres.</h1>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="GenreID" DataSourceID="GenreData" Width="100%">
        <Columns>
            <asp:BoundField DataField="GenreID" HeaderText="GenreID" InsertVisible="False" ReadOnly="True" SortExpression="GenreID" />
            <asp:BoundField DataField="GenreName" HeaderText="GenreName" SortExpression="GenreName" />
            <asp:BoundField DataField="GenreInfo" HeaderText="GenreInfo" SortExpression="GenreInfo" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="GenreData" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Genre] WHERE [GenreID] = @GenreID" InsertCommand="INSERT INTO [Genre] ([GenreName], [GenreInfo]) VALUES (@GenreName, @GenreInfo)" SelectCommand="SELECT * FROM [Genre]" UpdateCommand="UPDATE [Genre] SET [GenreName] = @GenreName, [GenreInfo] = @GenreInfo WHERE [GenreID] = @GenreID">
        <DeleteParameters>
            <asp:Parameter Name="GenreID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="GenreName" Type="String" />
            <asp:Parameter Name="GenreInfo" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="GenreName" Type="String" />
            <asp:Parameter Name="GenreInfo" Type="String" />
            <asp:Parameter Name="GenreID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>