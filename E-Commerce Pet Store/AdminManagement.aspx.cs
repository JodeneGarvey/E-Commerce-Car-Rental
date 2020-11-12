﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Pet_Store
{
    public partial class AdminManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void grdProducts_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewRow row = grdProducts.Rows[e.NewEditIndex];

            int rowId = Convert.ToInt32(row.Cells[1].Text);

            Response.Redirect("AddProducts.aspx?id=" +rowId);
        }
    }
}