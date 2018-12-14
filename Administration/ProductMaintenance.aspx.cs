using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    private String lblErrorMessage;

    protected void Page_Load(object sender, EventArgs e)
    {
           
}
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["ProductCode"].DefaultValue = Code.Text;
        SqlDataSource1.InsertParameters["Name"].DefaultValue = Name.Text;
        SqlDataSource1.InsertParameters["Version"].DefaultValue = Ver.Text;
        SqlDataSource1.InsertParameters["ReleaseDate"].DefaultValue = Date.Text;
        try
        {
            SqlDataSource1.Insert();
            Code.Text = "";
            Name.Text = "";
            Ver.Text = "";
            Date.Text = "mm/dd/yy";
        }
        catch (Exception ex)
        {
            lblErrorMessage = "A database error has occurred. "
                + "Message: " + ex.Message;
        }
    }
}