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
    public partial class UserRegister : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            /*UserModel user = new UserModel();
            User cus = RegisterUser();

            Label1.Text = user.InsertUser(cus);
            */
        }

        /*private User RegisterUser()
        {
            User customer = new User();

            customer.FullName = TextBox1.Text;
            //customer.DateofBirth = Convert.ToDateTime(TextBox2.Text);
            //customer.ContactNumber = Convert.ToInt32(TextBox3.Text);
            customer.EmailAddress = TextBox4.Text;
            customer.StreetAddress = TextBox5.Text;
            customer.District = TextBox6.Text;
            customer.Parish = DropDownList1.SelectedValue;
            customer.FullAddress = TextBox7.Text;
            customer.UserName = TextBox8.Text;
            customer.Password = TextBox9.Text;

            return customer;

        }*/
    }
}