using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace E_Commerce_Pet_Store
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-US9A784\SQLEXPRESS;Initial Catalog=QuickCar;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                /*if(Session["Rent"] == null)
                {
                    Button1.Enabled = false;
                }
                else
                {
                    Button1.Enabled = true;
                }*/
                if(Session["Login"] == null)
                {
                    Response.Redirect("UserLogin.aspx");
                }
                


                Session["addproduct"] = false;
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("rno");
                dt.Columns.Add("ProductID");
                dt.Columns.Add("ProductImage");
                dt.Columns.Add("ProductName");
                dt.Columns.Add("ProductPrice");
                dt.Columns.Add("StartDate");
                dt.Columns.Add("ReturnDate");
                dt.Columns.Add("Duration");
                dt.Columns.Add("TotalCost");

                if(Request.QueryString["id"] != null)
                {
                    if(Session["Rent"] == null)
                    {
                        dr = dt.NewRow();
                        
                        SqlDataAdapter user = new SqlDataAdapter("select * from user where Id=" + Request.QueryString["userid"], conn);
                        SqlDataAdapter da = new SqlDataAdapter("select * from Product where ID=" + Request.QueryString["id"], conn);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["rno"] = 1;
                        dr["ProductID"] = ds.Tables[0].Rows[0]["ProductID"].ToString();
                        dr["ProductImage"] = ds.Tables[0].Rows[0]["ProductImage"].ToString();
                        dr["ProductName"] = ds.Tables[0].Rows[0]["ProductName"].ToString();
                        dr["ProductPrice"] = ds.Tables[0].Rows[0]["ProductPrice"].ToString();
                        dr["StartDate"] = Request.QueryString["Pickupdate"];
                        dr["ReturnDate"] = Request.QueryString["Returndate"];
                        

                        int Price = Convert.ToInt32(ds.Tables[0].Rows[0]["ProductPrice"].ToString());
                        DateTime pickupdate = Convert.ToDateTime(Request.QueryString["Pickupdate"].ToString());
                        DateTime returndate = Convert.ToDateTime(Request.QueryString["Returndate"].ToString());
                        int Duration = ((TimeSpan)(returndate - pickupdate)).Days;
                        dr["Duration"] = Duration;
                        int TotalPrice = Price * Duration;
                        dr["TotalCost"] = TotalPrice;

                        dt.Rows.Add(dr);

                        conn.Open();
                        SqlCommand cmd = new SqlCommand("Insert into ShoppingCart values('" + dr["rno"] + "' , '" + Request.QueryString["userid"] + "','" + Request.QueryString["id"] + "','"
                            + Session["login"].ToString() + "','" + dr["StartDate"] + "','" + dr["ReturnDate"] + "','" + dr["Duration"] + "','" + dr["TotalCost"] + "')'");
                        cmd.ExecuteNonQuery();
                        conn.Close();
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["Rent"] = dt;
                        Button1.Enabled = true;

                        GridView1.FooterRow.Cells[7].Text = "Total Amount";
                        GridView1.FooterRow.Cells[8].Text = GrandTotal().ToString();
                        Response.Redirect("ShoppingCart.aspx");

                        
                    }
                    else
                    {
                        dt = (DataTable)Session["Rent"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        SqlConnection scon = new SqlConnection(@"Data Source = DESKTOP-US9A784\SQLEXPRESS; Initial Catalog = QuickCar; Integrated Security = True; MultipleActiveResultSets = True; Application Name = EntityFramework");

                        SqlDataAdapter da = new SqlDataAdapter("select * from Product where ID=" + Request.QueryString["id"], scon);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["rno"] = sr + 1;
                        dr["ProductID"] = ds.Tables[0].Rows[0]["ProductID"].ToString();
                        dr["ProductImage"] = ds.Tables[0].Rows[0]["ProductImage"].ToString();
                        dr["ProductName"] = ds.Tables[0].Rows[0]["ProductName"].ToString();
                        dr["ProductPrice"] = ds.Tables[0].Rows[0]["ProductPrice"].ToString();
                        dr["StartDate"] = Request.QueryString["Pickupdate"];
                        dr["ReturnDate"] = Request.QueryString["Returndate"];
                        

                        int Price = Convert.ToInt32(ds.Tables[0].Rows[0]["ProductPrice"].ToString());
                        DateTime pickupdate = Convert.ToDateTime(Request.QueryString["Pickupdate"].ToString());
                        DateTime returndate = Convert.ToDateTime(Request.QueryString["Returndate"].ToString());
                        int Duration = ((TimeSpan)(returndate - pickupdate)).Days;
                        dr["Duration"] = Duration;
                        int TotalPrice = Price * Duration;
                        dr["TotalCost"] = TotalPrice;

                        dt.Rows.Add(dr);

                        

                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["Rent"] = dt;
                        Button1.Enabled = true;

                        GridView1.FooterRow.Cells[7].Text = "Total Amount";
                        GridView1.FooterRow.Cells[8].Text = GrandTotal().ToString();
                        Response.Redirect("ShoppingCart.aspx");

                        

                    }
                }
                else
                {
                    dt = (DataTable)Session["Rent"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if(GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[7].Text = "Total Amount";
                        GridView1.FooterRow.Cells[8].Text = GrandTotal().ToString();
                    }
                }

            }
            string OrderDate = DateTime.Now.ToShortDateString();
            Session["orderdate"] = OrderDate;
            orderid();
        }

        public int GrandTotal()
            {
                DataTable dt = new DataTable();
                dt = (DataTable)Session["Rent"];
                int nrow = dt.Rows.Count;
                int i = 0;
                int totalprice = 0;
                while(i < nrow)
                {
                    totalprice = totalprice + Convert.ToInt32(dt.Rows[i]["TotalCost"].ToString());

                    i = i + 1;
                }
                return totalprice;
            }

        public void orderid()
        {
            String alpha = "abcdefghijklmnopqrstuvwxyz123456789";
            Random r = new Random();
            char[] myArray = new char[5];
            for(int i = 0; i < 5; i++)
            {
                myArray[i] = alpha[(int)(35 * r.NextDouble())];
            }
            String orderid;
            orderid = "Order_Id: " + DateTime.Now.Hour.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString()
                + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(myArray) + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
            Session["orderid"] = orderid;
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["Rent"];

            for(int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["rno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);
                TableCell prID = GridView1.Rows[e.RowIndex].Cells[1];

                if(sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();

                    conn.Open();
                    SqlCommand cmd = new SqlCommand("Delete top (1) from ShoppingCart where ProductID='" + prID.Text + "' and Username='" + Session["Login"] + "' ", conn);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    break;
                }
            }

            for(int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["rno"] = i;
                dt.AcceptChanges();
            }

            Session["Rent"] = dt;
            Response.Redirect("ShoppingCart.aspx");
        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt;
            dt = (DataTable)Session["Rent"];
            for(int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                SqlConnection scon = new SqlConnection(@"Data Source = DESKTOP-US9A784\SQLEXPRESS; Initial Catalog = QuickCar; Integrated Security = True; MultipleActiveResultSets = True; Application Name = EntityFramework");
                scon.Open();
                SqlCommand cmd = new SqlCommand("insert into [dbo].[Order](OrderId,Cartid,ProductID,Username,StartDate,EndDate,NumberofDays,Subtotal,OrderDate)values('" + Session["orderid"] + "'," + dt.Rows[i]["rno"] + "," + Request.QueryString["id"] + "," + Session["Login"] + "," + dt.Rows[i]["StartDate"] + "," + dt.Rows[i]["ReturnDate"] + "," + dt.Rows[i]["Duration"] + "," + dt.Rows[i]["TotalCost"] + "," + Session["orderdate"] + "')",scon);

                cmd.ExecuteNonQuery();
                scon.Close();
            }

            if(Session["Login"] == null)
            {
                Response.Redirect("UserLogin.aspx");
            }
            else
            {
                if(GridView1.Rows.Count.ToString() == "0")
                {
                    Response.Write("<script>alert('Your Shopping Cart is Empty. You cannot Rent the Car');</script>");
                }
                else
                {
                    Response.Redirect("Homepage.aspx");
                }
            }
        }
    }   
}