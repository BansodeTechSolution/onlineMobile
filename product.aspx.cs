using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class product : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Page.IsPostBack != true)
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                if (Request.QueryString["category"] == null)
                {
                    cmd.CommandText = "select * from productdetails;";
                }
                else
                {
                    cmd.CommandText = "select * from productdetails where cname ='" + Request.QueryString["category"].ToString() + "';";

                }


                cmd.ExecuteNonQuery();
                DataTable dt1 = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt1);
                DataList1.DataSource = dt1;
                DataList1.DataBind();
                con.Close();

            }
        }

        catch (Exception ex)
        {
            lblerror.Text = ex.Message;
        }






        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        if (dt != null)
        {
            lblcount.Text = dt.Rows.Count.ToString();
        }
        else
        { lblcount.Text = "0"; }

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "addtocart")
        {
            DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
            Response.Redirect("AddtoCart.aspx?pid=" + e.CommandArgument.ToString()+ "&quantity="+dlist.SelectedItem.ToString());

        }
    }
}