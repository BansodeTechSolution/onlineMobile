using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class changepassword : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] != null)
        {
            TextBox1.Text = Session["email"].ToString();
        }
        else Response.Redirect("login.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
           string pass = "";
           SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

            SqlCommand cmd = new SqlCommand("select email,password from logintable where email=@email", con);
            cmd.Parameters.AddWithValue("email", TextBox1.Text);
            con.Open();
            using (SqlDataReader sdr = cmd.ExecuteReader())
            {

                if (sdr.Read())
                {
                    pass = sdr["password"].ToString();
                    if (pass == TextBox2.Text)
                    {
                        SqlCommand cmd1 = new SqlCommand("update logintable set password ='"+TextBox3.Text+"' where email=@email",con);
                        cmd1.Parameters.AddWithValue("email", TextBox1.Text);
                        cmd1.ExecuteNonQuery();
                        lblerror.Text = "SUCCESSFULLY UPDATE THE PASSWORD";
                    }
                }

            }
            con.Close();
        
        
        
        }
        catch (Exception ex)
        { lblerror.Text = ex.Message; }
    }
}