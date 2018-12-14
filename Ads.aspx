<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Ads.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
    <h1>Ad Gallery</h1>
        <br />
    This page shows a randomly selected ad each time it is loaded.<br /> 
    <br />Clicking the image should take the user to the advertised location.<br />
<p>
    <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" />
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Ads.xml"></asp:XmlDataSource>
</p>
<p>&nbsp;</p>
</asp:Content>

