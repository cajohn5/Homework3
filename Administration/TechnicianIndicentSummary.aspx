<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TechnicianIndicentSummary.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="Main">
    <p>
        Select a technician:
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Name" DataValueField="TechID" AutoPostBack="True">
        </asp:DropDownList>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetAllTechnicians" TypeName="TechnicianDB"></asp:ObjectDataSource>
    </p>
<p>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource2">
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetOpenIncidents" TypeName="IncidentDB">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="TechID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </p>
</asp:Content>


