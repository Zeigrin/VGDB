<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/VGDB.Master" CodeBehind="EditRatings.aspx.cs" Inherits="VGDB.EditRatings" %>

<asp:Content ID="Page" ContentPlaceHolderID="Content" Runat="Server">
    <h1>Edit ESRB Ratings</h1>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="RatingID" DataSourceID="RatingData" Width="100%">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="RatingID" HeaderText="RatingID" InsertVisible="False" ReadOnly="True" SortExpression="RatingID" />
            <asp:BoundField DataField="RatingName" HeaderText="RatingName" SortExpression="RatingName" />
            <asp:BoundField DataField="RatingDesc" HeaderText="RatingDesc" SortExpression="RatingDesc" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="RatingData" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [ESRBRating] WHERE [RatingID] = @RatingID" InsertCommand="INSERT INTO [ESRBRating] ([RatingName], [RatingDesc]) VALUES (@RatingName, @RatingDesc)" SelectCommand="SELECT * FROM [ESRBRating]" UpdateCommand="UPDATE [ESRBRating] SET [RatingName] = @RatingName, [RatingDesc] = @RatingDesc WHERE [RatingID] = @RatingID">
        <DeleteParameters>
            <asp:Parameter Name="RatingID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="RatingName" Type="String" />
            <asp:Parameter Name="RatingDesc" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="RatingName" Type="String" />
            <asp:Parameter Name="RatingDesc" Type="String" />
            <asp:Parameter Name="RatingID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
