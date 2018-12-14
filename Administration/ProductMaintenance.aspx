<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProductMaintenance.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="Main">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductCode" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ProductCode" HeaderText="ProductCode" ReadOnly="True" SortExpression="ProductCode" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Version" HeaderText="Version" SortExpression="Version" />
            <asp:BoundField DataField="ReleaseDate" HeaderText="ReleaseDate" SortExpression="ReleaseDate" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnection %>" DeleteCommand="DELETE FROM [Products] WHERE [ProductCode] = @ProductCode" InsertCommand="INSERT INTO [Products] ([ProductCode], [Name], [Version], [ReleaseDate]) VALUES (@ProductCode, @Name, @Version, @ReleaseDate)" SelectCommand="SELECT [ProductCode], [Name], [Version], [ReleaseDate] FROM [Products] ORDER BY [ProductCode]" UpdateCommand="UPDATE [Products] SET [Name] = @Name, [Version] = @Version, [ReleaseDate] = @ReleaseDate WHERE [ProductCode] = @ProductCode">
        <DeleteParameters>
            <asp:Parameter Name="ProductCode" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductCode" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Version" Type="Decimal" />
            <asp:Parameter Name="ReleaseDate" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Version" Type="Decimal" />
            <asp:Parameter Name="ReleaseDate" Type="DateTime" />
            <asp:Parameter Name="ProductCode" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <p>
        &nbsp;</p>
    <p>
        To add a new product, enter the product information and click Add Product</p>
    <p>
        Product Code:
        <asp:TextBox ID="Code" runat="server"></asp:TextBox>
    </p>
    <p>
        Name:
        <asp:TextBox ID="Name" runat="server"></asp:TextBox>
    </p>
    <p>
        Version:
        <asp:TextBox ID="Ver" runat="server"></asp:TextBox>
    </p>
    <p>
        Release Date:
        <asp:TextBox ID="Date" runat="server">mm/dd/yy</asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Add Product" OnClick="Button1_Click" />
    </p>
</asp:Content>


