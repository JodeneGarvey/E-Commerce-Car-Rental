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
    
    public partial class Product_Display : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-US9A784\SQLEXPRESS;Initial Catalog=QuickCar;Integrated Security=True");
        Cart myCart;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id = Request.QueryString["ID"];
                if (id != null)
                {
                    dlProduct.DataSource = DataAccess.selectQuery("SELECT * FROM Product WHERE ID =" + id);
                    dlProduct.DataBind();
                }
            }
        }
        
       

        protected void B1Add_Click(object sender, EventArgs e)
        {
      
            if (Session["myCart"] == null)
            {
                myCart = new Cart();
                Session["myCart"] = myCart;
            }
            string id = Request.QueryString["ID"];
            myCart = (Cart)Session["myCart"];
            DataTable dt = DataAccess.selectQuery("SELECT * FROM Product WHERE ID =" + id);
            DataRow row = dt.Rows[0];
            myCart.Insert(new CartItem(Int32.Parse(id),
                row["ProductID"].ToString(),
                row["ProductName"].ToString(),
                row["ProductDesc"].ToString(),
                row["ProductImage"].ToString(),
                Double.Parse(row["ProductPrice"].ToString()),
                1)
               );
        }
    }
}
        


       