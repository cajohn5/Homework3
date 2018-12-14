<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="SurveyComplete.aspx.cs" Inherits="CustomerDisplay" %>

<asp:Content ID="Content2" runat="server" contentplaceholderid="Main">
        <p>
            <strong>Thank you for your feedback!</strong></p>
        <p>
            If requested, a customer service representative will contact you within 24 hours.</p>
        <p>
            <asp:Button ID="returnButton" runat="server" Text="Return to Survey" PostBackUrl="~/CustomerSurvey" />
        </p>
        <br />
    </asp:Content>
