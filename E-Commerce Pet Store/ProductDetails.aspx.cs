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
    public partial class ProductDetails : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["addproduct"] = false;
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Session["addproduct"] = true;
            if(e.CommandName == "AddToCart")
            {
                TextBox startdate = (TextBox)(e.Item.FindControl("TxtPickup"));
                TextBox returndate = (TextBox)(e.Item.FindControl("TxtReturn"));
                Response.Redirect("ShoppingCart.aspx?id=" + e.CommandArgument.ToString() + "&Pickupdate=" + startdate.Text + "&Returndate=" + returndate.Text);
            }
        }
    }
}