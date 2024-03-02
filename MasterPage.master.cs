using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null)
        {
            Loginbutton.Text = "LOGIN";
            lblemail.Text = "";
            Label1.Visible = false;
            Label6.Visible = true;
        }
        else
        {
            lblemail.Text = Session["email"].ToString();
            Loginbutton.Text = "LOGOUT";
            Label1.Visible = true;
            Label6.Visible = false;
        }
              

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      
    }
}
