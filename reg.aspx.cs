using System;
using System.Configuration;
using System.Data.SqlClient;

public partial class reg : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    /// <summary>
    /// Signs the in click.
    /// </summary>
    /// <param name="sender">The sender.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void SignInClick(object sender, EventArgs e)
    {//registration information has been stored
        try
        {
            string insertqry = "insert into logintable values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox4.Text + "');";
            SqlCommand cmd = new SqlCommand(insertqry, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lblerror.Text = TextBox1.Text+ " has been register successfully";
            Session["email"] = TextBox1.Text;
            
          
        }
        catch (Exception ex)
        {
            lblerror.Text = ex.Message;
        }

    }
}