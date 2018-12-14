<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CustomerIncidentDisplay.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
    <p>
        Select a customer:
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="CustomerID" AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnection %>" SelectCommand="SELECT [CustomerID], [Name] FROM [Customers] ORDER BY [Name]"></asp:SqlDataSource>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" GridLines="Both" RepeatDirection="Horizontal" Width="650px">
            <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
            <HeaderTemplate><tr> 
                <td>Product/Incident</td> 
                <td> Tech Name </td> 
                <td> Date Opened </td> 
                <td> Date Closed</td> </tr> 
            </HeaderTemplate>
            <ItemTemplate><tr>
               <td> <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                <br /></td>
                <td>
                <asp:Label ID="TechnicianLabel" runat="server" Text='<%# Eval("Technician") %>' />
                <br /></td>
                <td>
                <asp:Label ID="DateOpenedLabel" runat="server" Text='<%# Eval("DateOpened") %>' />
                <br /></td>
                <td>
                <asp:Label ID="DateClosedLabel" runat="server" Text='<%# Eval("DateClosed") %>' />
                <br /></td></tr>
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnection %>" SelectCommand="SELECT Products.Name, Technicians.Name AS Technician, Incidents.DateOpened, Incidents.DateClosed, Incidents.Description FROM Incidents INNER JOIN Technicians ON Incidents.TechID = Technicians.TechID INNER JOIN Products ON Incidents.ProductCode = Products.ProductCode WHERE (Incidents.CustomerID = @CustomerID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="CustomerID" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>

