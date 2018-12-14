<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EventCalendar.aspx.cs" Inherits="Default2" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">

    Event Calendar:<br />
    On this page, you can create your own custom event calendar!<br />
    <br />
    Events are saved in the format MM-DD-YYYY. Only one event can be scheduled per day.<br />
    <asp:Calendar ID="Calendar1" runat="server" ondayrender="Calendar1_DayRender"></asp:Calendar>
    Event Date:
    <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" ToolTip="In the format DD-MM-YYYY"></asp:TextBox>
    <br />
    Event:
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    &nbsp;<br />
&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Add Event" />

</asp:Content>

