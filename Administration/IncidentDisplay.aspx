<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="IncidentDisplay.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="Main">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2">
        <AlternatingItemTemplate>
            <tr style="background-color:#FFF8DC;">
                <td>
                    <asp:Label ID="CustomerLabel" runat="server" Text='<%# Eval("Customer") %>' />
                </td>
                <td>
                    <asp:Label ID="Date_OpenedLabel" runat="server" Text='<%# Eval("[Date Opened]") %>' />
                </td>
                <td>
                    <asp:Label ID="Date_ClosedLabel" runat="server" Text='<%# Eval("[Date Closed]") %>' />
                </td>
                <td>
                    <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                </td>
                <td>
                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                </td>
                <td>
                    <asp:Label ID="ProductLabel" runat="server" Text='<%# Eval("Product") %>' />
                </td>
                <td>
                    <asp:Label ID="TechnicianLabel" runat="server" Text='<%# Eval("Technician") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color:#008A8C;color: #FFFFFF;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:TextBox ID="CustomerTextBox" runat="server" Text='<%# Bind("Customer") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Date_OpenedTextBox" runat="server" Text='<%# Bind("[Date Opened]") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Date_ClosedTextBox" runat="server" Text='<%# Bind("[Date Closed]") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ProductTextBox" runat="server" Text='<%# Bind("Product") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TechnicianTextBox" runat="server" Text='<%# Bind("Technician") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>
                    <asp:TextBox ID="CustomerTextBox" runat="server" Text='<%# Bind("Customer") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Date_OpenedTextBox" runat="server" Text='<%# Bind("[Date Opened]") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Date_ClosedTextBox" runat="server" Text='<%# Bind("[Date Closed]") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ProductTextBox" runat="server" Text='<%# Bind("Product") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TechnicianTextBox" runat="server" Text='<%# Bind("Technician") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color:#DCDCDC;color: #000000;">
                <td>
                    <asp:Label ID="CustomerLabel" runat="server" Text='<%# Eval("Customer") %>' />
                </td>
                <td>
                    <asp:Label ID="Date_OpenedLabel" runat="server" Text='<%# Eval("[Date Opened]") %>' />
                </td>
                <td>
                    <asp:Label ID="Date_ClosedLabel" runat="server" Text='<%# Eval("[Date Closed]") %>' />
                </td>
                <td>
                    <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                </td>
                <td>
                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                </td>
                <td>
                    <asp:Label ID="ProductLabel" runat="server" Text='<%# Eval("Product") %>' />
                </td>
                <td>
                    <asp:Label ID="TechnicianLabel" runat="server" Text='<%# Eval("Technician") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                <th runat="server">Customer</th>
                                <th runat="server">Date Opened</th>
                                <th runat="server">Date Closed</th>
                                <th runat="server">Title</th>
                                <th runat="server">Description</th>
                                <th runat="server">Product</th>
                                <th runat="server">Technician</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="4">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                <td>
                    <asp:Label ID="CustomerLabel" runat="server" Text='<%# Eval("Customer") %>' />
                </td>
                <td>
                    <asp:Label ID="Date_OpenedLabel" runat="server" Text='<%# Eval("[Date Opened]") %>' />
                </td>
                <td>
                    <asp:Label ID="Date_ClosedLabel" runat="server" Text='<%# Eval("[Date Closed]") %>' />
                </td>
                <td>
                    <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                </td>
                <td>
                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                </td>
                <td>
                    <asp:Label ID="ProductLabel" runat="server" Text='<%# Eval("Product") %>' />
                </td>
                <td>
                    <asp:Label ID="TechnicianLabel" runat="server" Text='<%# Eval("Technician") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnection %>" SelectCommand="SELECT Customers.Name AS Customer, Incidents.DateOpened AS [Date Opened], Incidents.DateClosed AS [Date Closed], Incidents.Title, Incidents.Description, Products.Name AS Product, Technicians.Name AS Technician FROM Customers INNER JOIN Incidents ON Customers.CustomerID = Incidents.CustomerID INNER JOIN Products ON Incidents.ProductCode = Products.ProductCode INNER JOIN Technicians ON Incidents.TechID = Technicians.TechID ORDER BY [Date Opened]"></asp:SqlDataSource>
</asp:Content>


