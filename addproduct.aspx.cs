using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class addproduct : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null)
        {
            Response.Redirect("login.aspx"); ;
        }
        Image1.Visible = false;
        Button1.Visible = false;
        Button2.Visible = false;
        submit.Visible = true;



    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = GridView1.SelectedRow.Cells[1].Text;
        DropDownList1.Text = GridView1.SelectedRow.Cells[3].Text;
        TextBox2.Text = GridView1.SelectedRow.Cells[2].Text;
        TextBox3.Text = GridView1.SelectedRow.Cells[4].Text;
        Image1.Visible=true;
        Button1.Visible = true;
        Button2.Visible = true;
        submit.Visible = false;
        Image1.ImageUrl = GridView1.SelectedRow.Cells[5].Text;
    
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (FileUpload1.HasFile)
            {

                string path = Path.GetFileName(FileUpload1.PostedFile.FileName);
                path = path.Replace(" ", "");
                String filename1 = path;
                FileUpload1.SaveAs(Server.MapPath("images/") + path);
                string pic = "images/" + path;

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
                String query = "Update productdetails set name='" + TextBox2.Text + "', price='" + TextBox3.Text + "', img='" + pic + "' where id=" + TextBox1.Text;
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";

                lblerror.Text = "SUCCESSFULLY UPDATED RECORDED ";
                Response.Redirect("addproduct.aspx");
            }
            else
            {

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
                String query = "Update productdetails set name='" + TextBox2.Text + "', price='" + TextBox3.Text + "' where id=" + TextBox1.Text;
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";

                lblerror.Text = "SUCCESSFULLY UPDATED RECORDED ";
                Response.Redirect("addproduct.aspx");
            }

        }
        catch (Exception ex)
        {
            lblerror.Text = ex.Message;
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
            String query = "delete from productdetails where id=" + TextBox1.Text;
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";

            lblerror.Text = "SUCCESSFULLY DELETED RECORED ";
            Response.Redirect("addproduct.aspx");


        }
        catch (Exception ex)
        {
            lblerror.Text = ex.Message;
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        try
        {
            if (FileUpload1.HasFile)
            {

                string path = Path.GetFileName(FileUpload1.PostedFile.FileName);
                path = path.Replace(" ", "");
                String filename1 = path;
                FileUpload1.SaveAs(Server.MapPath("img/") + path);
                string pic = "img/" + path;

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
                String query = "Insert into productdetails(name,cname,price,img) values('" + TextBox2.Text + "','" + DropDownList1.SelectedValue.ToString() + "','" + TextBox3.Text + "', '" + pic + "' )";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";

                lblerror.Text = "successfully added ";
                Response.Redirect("addproduct.aspx");
            }
            else
            {
                lblerror.Text = "Please Insert Image";
            }

        }
        catch (Exception ex)
        {
            lblerror.Text = ex.Message;
        }


    }
}