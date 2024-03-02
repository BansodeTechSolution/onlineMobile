using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null)
        {
            Loginbutton.Text = "LOGIN";
            lblemail.Text = "";
            Response.Redirect("login.aspx");
            
        }
        else
        {
            lblemail.Text = Session["email"].ToString();
            Loginbutton.Text = "LOGOUT";
            
        }
            
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}
