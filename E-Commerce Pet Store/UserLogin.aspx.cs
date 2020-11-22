using System;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Pet_Store
{

    public partial class UserLogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-US9A784\SQLEXPRESS;Initial Catalog=QuickCar;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if(Session["Login"] != null)
                {
                    Response.Redirect("Homepage.aspx");
                }
            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            
            con.Open();

            SqlCommand com = con.CreateCommand();
            com.CommandType = CommandType.Text;
            com.CommandText = "Select count(*) from [User] where UserName ='" + TxtUser.Text.Trim() + "' and Password = '" + TxtPassword.Text.Trim() + "'";
            com.ExecuteNonQuery();
            SqlDataAdapter sda = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            
            if(dt.Rows[0][0].ToString() == "1")
            {
                Session["Login"] = TxtUser.Text;
                Session["Rent"] = null;
                FillSavedCart();
                Response.Redirect("Homepage.aspx");
            }
            else
            {
                LitMsg.Text = "Username & Password are Inccorect";
            }
            
            
        }

        private void FillSavedCart()
        {
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

            String mycon = @"Data Source=DESKTOP-US9A784\SQLEXPRESS;Initial Catalog=QuickCar;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework";
            SqlConnection scon = new SqlConnection(mycon);
            String myquery = "select * from ShoppingCart where UserName='" + Session["Login"].ToString() + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if(ds.Tables[0].Rows.Count > 0)
            {
                int i = 0;
                int counter = ds.Tables[0].Rows.Count;
                while(i < counter)
                {
                    dr = dt.NewRow();
                    dr["rno"] = i + 1;
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
                    i = i + 1;
                }
            }
            else
            {
                Session["Rent"] = null;
            }
            Session["Rent"] = dt;
        }
    }
}