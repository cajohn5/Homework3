<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="ContactDisplay.aspx.cs" Inherits="CustomerDisplay" %>

<asp:Content ID="Content2" runat="server" contentplaceholderid="Main">


        <p>
            Contact list:</p>
        <p>
            <asp:ListBox ID="customerListBox" runat="server" Height="100px" Width="450px"></asp:ListBox>
        </p>
        <p>
            <asp:Button ID="removeContactButton" OnClick="removeContactButton_Click" runat="server" Text="Remove Contact" Width="150px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="emptyListButton" OnClick="emptyListButton_Click" runat="server" Text="Empty List" Width="150px" />
        </p>
        <p>
            <asp:Button ID="selectAdditionalButton" runat="server" Text="Select Additional Customers" PostBackUrl="~/CustomerDisplay" />
        </p>
    </asp:Content>