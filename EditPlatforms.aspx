<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/VGDB.Master" CodeBehind="EditPlatforms.aspx.cs" Inherits="VGDB.EditPlatforms" %>

<asp:Content ID="Page" ContentPlaceHolderID="Content" Runat="Server">
    <h1>Edit Platforms.</h1>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="PlatformID" DataSourceID="PlatformData" Width="100%">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="PlatformID" HeaderText="PlatformID" InsertVisible="False" ReadOnly="True" SortExpression="PlatformID" />
            <asp:BoundField DataField="PlatformName" HeaderText="PlatformName" SortExpression="PlatformName" />
            <asp:BoundField DataField="PlatformManufacturer" HeaderText="PlatformManufacturer" SortExpression="PlatformManufacturer" />
            <asp:BoundField DataField="PlatformInfo" HeaderText="PlatformInfo" SortExpression="PlatformInfo" />
            <asp:BoundField DataField="PlatformLaunchYear" HeaderText="PlatformLaunchYear" SortExpression="PlatformLaunchYear" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="PlatformData" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [GamingPlatform] WHERE [PlatformID] = @PlatformID" InsertCommand="INSERT INTO [GamingPlatform] ([PlatformName], [PlatformManufacturer], [PlatformInfo], [PlatformLaunchYear]) VALUES (@PlatformName, @PlatformManufacturer, @PlatformInfo, @PlatformLaunchYear)" SelectCommand="SELECT * FROM [GamingPlatform]" UpdateCommand="UPDATE [GamingPlatform] SET [PlatformName] = @PlatformName, [PlatformManufacturer] = @PlatformManufacturer, [PlatformInfo] = @PlatformInfo, [PlatformLaunchYear] = @PlatformLaunchYear WHERE [PlatformID] = @PlatformID">
        <DeleteParameters>
            <asp:Parameter Name="PlatformID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PlatformName" Type="String" />
            <asp:Parameter Name="PlatformManufacturer" Type="String" />
            <asp:Parameter Name="PlatformInfo" Type="String" />
            <asp:Parameter Name="PlatformLaunchYear" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PlatformName" Type="String" />
            <asp:Parameter Name="PlatformManufacturer" Type="String" />
            <asp:Parameter Name="PlatformInfo" Type="String" />
            <asp:Parameter Name="PlatformLaunchYear" Type="Int32" />
            <asp:Parameter Name="PlatformID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>