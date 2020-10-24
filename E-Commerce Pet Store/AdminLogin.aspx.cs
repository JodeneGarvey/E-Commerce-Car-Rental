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
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            i = 0;
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from Admin where UserID='"+TextBox1.Text+"' and Password='"+TextBox2.Text+"'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter();
            da.Fill(dt);
            i = Convert.ToInt32(dt.Rows.Count.ToString());

            if(i == 1)
            {
                Response.Redirect("AdminPage.aspx");
            }
            else
            {
                l1.Text = "User ID or Password Invalid";
            }
            con.Close();
        }
    }
}