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
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Test');</script>");
            
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
                Session["id"] = TxtUser.Text;
                Response.Redirect("Product_Display.aspx");
               
            }
            else
            {
                LitMsg.Text = "Username & Password are Inccorect";
            }
            
            
        }
    }
}