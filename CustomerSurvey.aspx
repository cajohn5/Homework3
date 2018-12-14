<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="CustomerSurvey.aspx.cs" Inherits="CustomerDisplay" %>

<asp:Content ID="Content2" runat="server" contentplaceholderid="Main">
        <p style="height: 35px">
            Enter your customer ID:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="customerID" runat="server" Width="195px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="incidentButton" OnClick="incidentButton_Click" runat="server" Text="Get Incidents" />
            <asp:RequiredFieldValidator ID="requiredFieldValidator" runat="server" ForeColor="#CC0000" ControlToValidate="customerID" Display="Dynamic" ErrorMessage="Please enter your Customer ID"></asp:RequiredFieldValidator>
&nbsp;
            <asp:CompareValidator ID="intValidator" runat="server" ForeColor="#CC0000" ControlToValidate="customerID" Display="Dynamic" ErrorMessage="Your Customer ID must be an integer." Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
        </p>
        <p style="height: 35px">
        <asp:Label ID="incidentError" runat="server" ForeColor="#CC0000" Text="Error: No incidents found for that Customer ID." Visible="False"></asp:Label>
        </p>
        <p>
            <asp:ListBox ID="incidentBox" runat="server" Height="100px" Width="450px" Enabled="False" DataTextField="Title" DataValueField="Title"></asp:ListBox>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnection %>" SelectCommand="SELECT [Title], [DateClosed], [DateOpened], [ProductCode], [TechID], [CustomerID], [IncidentID] FROM [Incidents] ORDER BY [DateClosed]"></asp:SqlDataSource>
            <asp:RequiredFieldValidator ID="requiredFieldValidator0" runat="server" ForeColor="#CC0000" ControlToValidate="incidentBox" Display="Dynamic" ErrorMessage="Please select an incident." Enabled="False"></asp:RequiredFieldValidator>
        </p>
        <p style="font-weight: bold">
            Please rate this incident by the following categories:</p>
        <p>
            Response Time:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;
            <asp:RadioButtonList ID="survey1" runat="server" RepeatDirection="Horizontal" Enabled="False">
                <asp:ListItem Value = "1">Not Satisfied</asp:ListItem>
                <asp:ListItem Value = "2">Somewhat Satisfied</asp:ListItem>
                <asp:ListItem Value = "3">Satisfied</asp:ListItem>
                <asp:ListItem Value = "4">Completely Satisfied</asp:ListItem>
            </asp:RadioButtonList>
        </p>
        <p>
            Technician Efficiency:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButtonList ID="survey2" runat="server" RepeatDirection="Horizontal" Enabled="False">
                <asp:ListItem Value = "1">Not Satisfied</asp:ListItem>
                <asp:ListItem Value = "2">Somewhat Satisfied</asp:ListItem>
                <asp:ListItem Value = "3">Satisfied</asp:ListItem>
                <asp:ListItem Value = "4">Completely Satisfied</asp:ListItem>
            </asp:RadioButtonList>
        </p>
        <p>
            Problem resolution:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButtonList ID="survey3" runat="server" RepeatDirection="Horizontal" Enabled="False">
                <asp:ListItem Value = "1">Not Satisfied</asp:ListItem>
                <asp:ListItem Value = "2">Somewhat Satisfied</asp:ListItem>
                <asp:ListItem Value = "3">Satisfied</asp:ListItem>
                <asp:ListItem Value = "4">Completely Satisfied</asp:ListItem>
            </asp:RadioButtonList>
        </p>
        <p>
            Additional comments:</p>
        <p>
            <asp:TextBox ID="commentBox" runat="server" Enabled="False" Height="100px" Rows="4" TextMode="MultiLine" Width="450px"></asp:TextBox>
        </p>
        <p style="height: 17px">
            <asp:CheckBox ID="contactMe" runat="server" Text="Please contact me to discuss this incident" Enabled="False" />
        </p>
            <asp:RadioButtonList ID="contactPref" runat="server" Enabled="False">
                <asp:ListItem Value = "1">Contact by email</asp:ListItem>
                <asp:ListItem Value = "2">Contact by phone</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Button ID="submitButton" OnClick="submitButton_Click" runat="server" Text="Submit" Enabled="False" />
            <br />
    </asp:Content>