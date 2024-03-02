using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class fpassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblerror.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
//forgot password  recovery code
         string question = "";
        // string password = "";
         string answer = "";
         SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

        SqlCommand cmd = new SqlCommand("select email,question,answer,password from logintable where email=@email", con);  
        cmd.Parameters.AddWithValue("email", TextBox1.Text);  
        con.Open();  
        using(SqlDataReader sdr = cmd.ExecuteReader()) {  
  
            if (sdr.Read()) {
                question = sdr["question"].ToString();
                answer = sdr["answer"].ToString();

                if (DropDownList1.Text == question && answer == TextBox4.Text)
                {
                    lblerror.Text = sdr["password"].ToString();
                    lblerror.Text += "  its is your password";
                }
                else
                {
                    lblerror.Text = "please Enter proper Question and Password";

                
                }
            }  
  
        }  
        con.Close();

    }
}