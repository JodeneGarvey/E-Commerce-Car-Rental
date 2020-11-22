using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace E_Commerce_Car_Rental
{
    public partial class AdminLogin1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-US9A784\SQLEXPRESS;Initial Catalog=QuickCar;Integrated Security=True;Pooling=False");
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if(Session["Admin"] != null)
                {
                    Response.Redirect("Management.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand com = con.CreateCommand();
            com.CommandType = CommandType.Text;
            com.CommandText = "Select count(*) from Admin where AdminID ='" + TextBox1.Text + "' and Password = '" + TextBox2.Text + "'";
            com.ExecuteNonQuery();
            SqlDataAdapter sda = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows[0][0].ToString() == "1")
            {
                Session["Admin"] = TextBox1.Text;
                Response.Redirect("Management.aspx");

            }
            else
            {
                l1.Text = "Username & Password are Inccorect";
            }
        }
    }
}