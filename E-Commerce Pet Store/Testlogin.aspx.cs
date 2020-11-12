using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Pet_Store
{
    public partial class Testlogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-US9A784\SQLEXPRESS;Initial Catalog=QuickCar;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            

            con.Open();

            SqlCommand com = con.CreateCommand();
            com.CommandType = CommandType.Text;
            com.CommandText = "Select count(*) from [User] where UserName ='" + TextBox1.Text + "' and Password = '" + TextBox2.Text + "'";
            com.ExecuteNonQuery();
            SqlDataAdapter sda = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows[0][0].ToString() == "1")
            {
                Session["id"] = TextBox1.Text;
                Response.Redirect("Product_Detail.aspx");

            }
            else
            {
                Label1.Text = "Username & Password are Inccorect";
            }

        }
    }
}