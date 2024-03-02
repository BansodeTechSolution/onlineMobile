using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class PlaceOrder : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        try { 
        if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("id");
            dt.Columns.Add("name");
            dt.Columns.Add("quantity");
            dt.Columns.Add("price");
            dt.Columns.Add("totalprice");
            dt.Columns.Add("img");


            if (Request.QueryString["id"] != null)
            {
                if (Session["Buyitems"] == null)
                {

                    dr = dt.NewRow();
                  
                    String myquery = "select * from productdetails where id=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = con;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = 1;
                    dr["id"] = ds.Tables[0].Rows[0]["id"].ToString();
                    dr["name"] = ds.Tables[0].Rows[0]["name"].ToString();
                    dr["img"] = ds.Tables[0].Rows[0]["img"].ToString();
                    dr["quantity"] = Request.QueryString["quantity"];
                    dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                    int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
                    int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                    int totalprice = price * quantity;
                    dr["totalprice"] = totalprice;

                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("AddToCart.aspx");

                }
                else
                {

                    dt = (DataTable)Session["buyitems"];
                    int sr;
                    sr = dt.Rows.Count;

                    dr = dt.NewRow();
                    //String mycon = "";
                    String myquery = "select * from productdetails where id=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = con;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = sr + 1;
                    dr["id"] = ds.Tables[0].Rows[0]["id"].ToString();
                    dr["name"] = ds.Tables[0].Rows[0]["name"].ToString();
                    dr["img"] = ds.Tables[0].Rows[0]["img"].ToString();
                    dr["quantity"] = Request.QueryString["quantity"];
                    dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                    int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
                    int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                    int totalprice = price * quantity;
                    dr["totalprice"] = totalprice;
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("AddToCart.aspx");

                }
            }
            else
            {
                dt = (DataTable)Session["buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
                if (GridView1.Rows.Count > 0)
                {
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();

                }


            }
            // Label2.Text = GridView1.Rows.Count.ToString();

        }
        Label4.Text = DateTime.Now.ToShortDateString();
        findorderid();
        }
        catch (Exception ex) { lblerror.Text = ex.Message; }

    }
    public int grandtotal()
    {
       
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        int nrow = dt.Rows.Count;
        int i = 0;
        int gtotal = 0;
        while (i < nrow)
        {
            gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

            i = i + 1;
        }
        return gtotal;


    }
    public void findorderid()
    {
        try { 
        String pass = "abcdefghijklmnopqrstuvwxyz123456789";
        Random r = new Random();
        char[] mypass = new char[5];
        for (int i = 0; i < 5; i++)
        {
            mypass[i] = pass[(int)(35 * r.NextDouble())];

        }
        String orderid;
        orderid = "Order" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(mypass);

        Label3.Text = orderid;

        }
        catch (Exception ex) { lblerror.Text = ex.Message; }

    }

    public void saveaddress()
    {

        try { 
        String updatepass = "insert into orderaddress(orderid,address,mobilenumber) values('" + Label3.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "')";
       // String mycon1 = "";
        con.Open();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = updatepass;
        cmd1.Connection = con;
        cmd1.ExecuteNonQuery();
        con.Close();
        }
        catch (Exception ex) { lblerror.Text = ex.Message; }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        try { 
        DataTable dt;
        dt = (DataTable)Session["buyitems"];



        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            String updatepass = "insert into orderdetails(orderid,sno,productid,productname,price,quantity,dateoforder) values('" + Label3.Text + "'," + dt.Rows[i]["sno"] + "," + dt.Rows[i]["id"] + ",'" + dt.Rows[i]["name"] + "'," + dt.Rows[i]["price"] + "," + dt.Rows[i]["quantity"] + ",'" + Label4.Text + "')";
            con.Open();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = updatepass;
            cmd1.Connection = con;
            cmd1.ExecuteNonQuery();
            con.Close();

        }
        saveaddress();
        Response.Redirect("placeorderbill.aspx?orderid="+Label3.Text);
        }
        catch (Exception ex) { lblerror.Text = ex.Message; }

    }
}