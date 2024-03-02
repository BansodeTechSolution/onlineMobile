using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class feedback : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null)
            Response.Redirect("login.aspx");
        else
            TextBox1.Text = Session["email"].ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox2.Text = "";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            String query = "Insert into dbo.feedback(emailid,suggestion) values('" + TextBox1.Text + "','" + TextBox2.Text + "');";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";

            lblerror.Text = "successfully added ";
        }
        catch (Exception ex)
        {
            lblerror.Text = ex.Message;
        }
    }
}