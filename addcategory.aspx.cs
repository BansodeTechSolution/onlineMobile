using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class addcategory : System.Web.UI.Page
{

    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

            String query = "Insert into dbo.category(cname) values('" + TextBox1.Text + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox1.Text = "";
                        lblerror.Text = "successfully added ";
                        Response.Redirect("addcategory.aspx");
        }
        catch (Exception ex)
        { lblerror.Text = ex.Message; }
    }
}