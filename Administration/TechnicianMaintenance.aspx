<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TechnicianMaintenance.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        width: 350px;
        height: 345px;
    }
        .style3
        {
            width: 250px;
        }
        .style4
        {
            width: 20px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="Main">
    <p>
        Select a Technician:
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="TechID" AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnection %>" SelectCommand="SELECT [TechID], [Name] FROM [Technicians] ORDER BY [Name]"></asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource2">
            <EditItemTemplate>
                Tech ID:
                <asp:Label ID="TechIDLabel" runat="server" Text='<%# Eval("TechID") %>'></asp:Label>
                <br />
                Name:
                <table>
                    <tr>
                        <td class="style3">
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>' Width="240px"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Name is a required field.">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <br />
                Email:
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Email") %>' Width="240px"></asp:TextBox>
                <table>
                    <tr>
                        <td class="style4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Email is a required field.">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <br />
                Phone:
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Phone") %>' Width="240px"></asp:TextBox>
                <table>
                    <tr>
                        <td class="style4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Phone is a required field.">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                <asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Tech ID:
                <table>
                    <tr>
                        <td class="style3">
                            <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged" Text='<%# Bind("TechID") %>' Width="240px"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="TechID is a required field.">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <br />
                Name:
                <table>
                    <tr>
                        <td class="style3">
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>' Width="240px"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Name is a required field.">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <br />
                Email:
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Email") %>' Width="240px"></asp:TextBox>
                <table>
                    <tr>
                        <td class="style4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Email is a required field.">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <br />
                Phone:
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Phone") %>' Width="240px"></asp:TextBox>
                <table>
                    <tr>
                        <td class="style4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Phone is a required field.">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <asp:Button ID="Button3" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                <asp:Button ID="Button4" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                <br />
            </InsertItemTemplate>
            <ItemTemplate>
                Tech ID: <asp:Label ID="TechIDLabel" runat="server" Text='<%# Eval("TechID") %>'></asp:Label><br /> Name: <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label><br /> Email: <asp:Label ID="Label2" runat="server" Text='<%# Eval("Email") %>'></asp:Label><br /> Phone: <asp:Label ID="Label3" runat="server" Text='<%# Eval("Phone") %>'></asp:Label>
                <br />
                <asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                <asp:Button ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnection %>" DeleteCommand="DELETE FROM [Technicians] WHERE [TechID] = @TechID" InsertCommand="INSERT INTO [Technicians] ([Name], [Email], [Phone]) VALUES (@Name, @Email, @Phone)" SelectCommand="SELECT [TechID], [Name], [Email], [Phone] FROM [Technicians] WHERE ([TechID] = @TechID)" UpdateCommand="UPDATE [Technicians] SET [Name] = @Name, [Email] = @Email, [Phone] = @Phone WHERE [TechID] = @TechID">
            <DeleteParameters>
                <asp:Parameter Name="TechID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="@TechID" Name="TechID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="TechID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>


