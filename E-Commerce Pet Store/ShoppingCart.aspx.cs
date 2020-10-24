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
        Cart myCart;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["myCart"] == null)
            {
                Session["myCart"] = new Cart();
            }
            myCart =(Cart) Session["myCart"];
           if(!IsPostBack)
            {
                FillData();
            }
        }

        private void FillData()
        {
            GVShoppingCart.DataSource = myCart.Items;
            GVShoppingCart.DataBind();
            if (myCart.Items.Count == 0)
            {
                lblGrandTotal.Visible = false;
            }
            else
            {
                lblGrandTotal.Text = string.Format("Grand Total = {0,19:C}", myCart.GrandTotal);
                lblGrandTotal.Visible = true;
            }
            
        }

        protected void GVShoppingCart_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GVShoppingCart.EditIndex = -1;
            FillData();
        }

        protected void GVShoppingCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            myCart.Delete(e.RowIndex);
            FillData();
        }

        protected void GVShoppingCart_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GVShoppingCart.EditIndex = e.NewEditIndex;
            FillData();
        }

        protected void GVShoppingCart_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            
            TextBox txtDuration = (TextBox) GVShoppingCart.Rows[e.RowIndex].Cells[4].Controls[0];
            int Duration = Int32.Parse(txtDuration.Text);
            myCart.Update(e.RowIndex, Duration);
            GVShoppingCart.EditIndex = -1;
            FillData();
            
            
            
           
           
        }

       
    }   
}