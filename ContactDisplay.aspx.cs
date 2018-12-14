using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerDisplay : System.Web.UI.Page
{
    private CustomerList contacts;

    protected void Page_Load(object sender, EventArgs e)
    {
        contacts = CustomerList.GetCustomers();
        if (!IsPostBack)
            this.DisplayContacts();
    }

    private void DisplayContacts()
    {
        customerListBox.Items.Clear();
        Customer customer;
        for (int i = 0; i<contacts.Count; i++)
        {
            customer = contacts[i];
            customerListBox.Items.Add(customer.ContactFormat());
        }
    }



    protected void removeContactButton_Click(object sender, EventArgs e)
    {
        if (contacts.Count > 0 && customerListBox.SelectedIndex >= 0)
        {
            contacts.RemoveAt(customerListBox.SelectedIndex);
                this.DisplayContacts();
        }
    }
    protected void emptyListButton_Click(object sender, EventArgs e)
    {
        contacts.Clear();
        customerListBox.Items.Clear();
    }

    protected void removeContactButton_Click1(object sender, EventArgs e)
    {

    }
}