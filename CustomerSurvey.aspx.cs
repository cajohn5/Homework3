using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

public partial class CustomerDisplay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private DataView incidentTable;

    private void incidentBoxPopulate() {
        incidentBox.Items.Add(new ListItem("--Select an incident--", "None"));
        foreach (DataRowView row in incidentTable) {
            Incident i = new Incident();
            i.IncidentID = Convert.ToInt32(row["IncidentID"]);
            i.ProductCode = row["ProductCode"].ToString();
            i.DateClosed = Convert.ToDateTime(row["DateClosed"]);
            i.Title = row["Title"].ToString();
            incidentBox.Items.Add(new ListItem(i.IncidentFormat(), i.IncidentID.ToString()));
        }
        incidentError.Visible = false;
        incidentBox.SelectedIndex = 0;
}
    private void toggle()
    {
        incidentBox.Enabled = true;
        survey1.Enabled = true;
        survey2.Enabled = true;
        survey3.Enabled = true;
        commentBox.Enabled = true;
        contactMe.Enabled = true;
        contactPref.Enabled = true;
        submitButton.Enabled = true;

    }
    protected void incidentButton_Click(object sender, EventArgs e)
    {
        incidentTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        incidentTable.RowFilter = "DateClosed Is Not Null AND CustomerID = " + customerID.Text;
        if (incidentTable.Count > 0)
        {
            incidentBox.Focus();
            this.incidentBoxPopulate();
            this.toggle();

        }
        else
        {
            incidentError.Visible = true;
        }
    }
    protected void submitButton_Click(object sender, EventArgs e)
    {
        Survey s = new Survey();
        s.CustomerID = Convert.ToInt32(customerID.Text);
        s.IncidentID = Convert.ToInt32(incidentBox.SelectedValue);
        s.ResponseTime = Convert.ToInt32(survey1.SelectedValue);
        s.TechEfficiency= Convert.ToInt32(survey2.SelectedValue);
        s.Resolution = Convert.ToInt32(survey3.SelectedValue);
        s.Comments = commentBox.Text;
        if (contactMe.Checked)
        {
            s.Contact = true;
            if (Convert.ToInt32(contactPref.SelectedValue) == 1)
            {
                s.ContactBy = "Email";

            }
            if (Convert.ToInt32(contactPref.SelectedValue) == 2)
            {
                s.ContactBy = "Phone";

            }
        }
        else {
            s.Contact = false;
                }
        Response.Redirect("SurveyComplete");

    }
}