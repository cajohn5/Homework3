using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerDisplay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            NameList.DataBind();
        }

        selectedCustomer = this.GetSelectedCustomer();
        AddressLine1.Text = selectedCustomer.Address;
        AddressLine2.Text = selectedCustomer.City + ", " + selectedCustomer.State + ", " + selectedCustomer.ZipCode;
        Phone.Text = selectedCustomer.Phone;
        Email.Text = selectedCustomer.Email;

    }


    private Customer selectedCustomer;

    private Customer GetSelectedCustomer()
    {
        DataView CustomerTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        CustomerTable.RowFilter = "CustomerID ='" + NameList.SelectedValue + "'";
        DataRowView filteredCustomer = CustomerTable[0];
        Customer CustomerChoice = new Customer();
        CustomerChoice.CustomerID = filteredCustomer["CustomerID"].ToString();
        CustomerChoice.Name = filteredCustomer["Name"].ToString();
        CustomerChoice.Address = filteredCustomer["Address"].ToString();
        CustomerChoice.City = filteredCustomer["City"].ToString();
        CustomerChoice.State = filteredCustomer["State"].ToString();
        CustomerChoice.ZipCode = filteredCustomer["ZipCode"].ToString();
        CustomerChoice.Phone = filteredCustomer["Phone"].ToString();
        CustomerChoice.Email = filteredCustomer["Email"].ToString();



        return CustomerChoice;
    }
    protected void addButton_Click(object sender, EventArgs e)
    {
            CustomerList contacts = CustomerList.GetCustomers();
            Customer customer = contacts[selectedCustomer.Name];
            if (customer == null)
            {
                contacts.AddItem(selectedCustomer);
                Response.Redirect("ContactDisplay");

            }
            else
            {
                ErrorMessage.Visible = true;
            }
        }
    }