using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class Default2 : System.Web.UI.Page
{
    Hashtable events = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            events = new Hashtable();
            Session.Add("events", events);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["events"] != null)
        {
            events = (Hashtable)Session["events"];

            string eventDate = TextBox1.Text.Trim();
            string eventTitle = TextBox2.Text.Trim();
            if (!events.ContainsKey(eventDate))
            {
                events.Add(eventDate, eventTitle);
            }
            Session.Add("events", events);
        }
    }
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (Session["events"] != null)
        {
            events = (Hashtable)Session["events"];

            if (events[e.Day.Date.ToString("dd-MM-yyyy")] != null)
            {
                Literal lineBreak = new Literal();
                lineBreak.Text = "<BR /><BR />";
                e.Cell.Controls.Add(lineBreak);

                e.Cell.BorderColor = System.Drawing.ColorTranslator.FromHtml("#808080");
                e.Cell.BackColor = System.Drawing.ColorTranslator.FromHtml("#f3f3f3");
                e.Cell.BorderStyle = BorderStyle.Solid;
                e.Cell.BorderWidth = 1;

                Label b = new Label();
                b.Font.Size = 8;
                b.Font.Bold = true;
                b.ForeColor = System.Drawing.ColorTranslator.FromHtml("#336699");
                b.Text = events[e.Day.Date.ToString("dd-MM-yyyy")].ToString();
                e.Cell.Controls.Add(b);
            }
        }

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}