using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class EditOrder : System.Web.UI.Page
{
    DataTable dt; 
    protected void Page_Load(object sender, EventArgs e)
    {
        try {
            if (Session["email"] == null)
                Response.Redirect("login.aspx");
        if (IsPostBack)
        {
        }
        else
        {
            if (Request.QueryString["sno"] != null)
            {
                dt = (DataTable)Session["buyitems"];


                for (int i = 0; i <= dt.Rows.Count - 1; i++)
                {
                    int sr;
                    int sr1;
                    sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                    Label7.Text = Request.QueryString["sno"];
                    Label8.Text = sr.ToString();
                    sr1 = Convert.ToInt32(Label7.Text);
                    //sr1 = sr1 + 1;


                    if (sr == sr1)
                    {
                        Label7.Text = dt.Rows[i]["sno"].ToString();
                        Label8.Text = dt.Rows[i]["id"].ToString();
                        Label9.Text = dt.Rows[i]["name"].ToString();
                        DropDownList1.Text = dt.Rows[i]["quantity"].ToString();
                        Label10.Text = dt.Rows[i]["price"].ToString();
                        Label12.Text = dt.Rows[i]["totalprice"].ToString();

                        break;

                    }
                }
            }
            else
            {
            }

        }
        }
        catch (Exception ex)
        { lblerror.Text = ex.Message; }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int q;
        q = Convert.ToInt32(DropDownList1.Text);
        int cost;
        cost = Convert.ToInt32(Label10.Text);
        int totalcost;
        totalcost = cost * q;
        Label12.Text = totalcost.ToString();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dt = (DataTable)Session["buyitems"];


        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            int sr;
            int sr1;
            sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());

            sr1 = Convert.ToInt32(Label7.Text);



            if (sr == sr1)
            {
                dt.Rows[i]["sno"] = Label7.Text;
                dt.Rows[i]["id"] = Label8.Text;
                dt.Rows[i]["name"] = Label9.Text;
                dt.Rows[i]["quantity"] = DropDownList1.Text;
                dt.Rows[i]["price"] = Label10.Text;
                dt.Rows[i]["totalprice"] = Label12.Text;
                dt.AcceptChanges();

                break;

            }
        }
        Response.Redirect("AddToCart.aspx");
    }

    }
