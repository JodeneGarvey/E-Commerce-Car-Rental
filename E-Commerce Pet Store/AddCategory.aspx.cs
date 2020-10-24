using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace E_Commerce_Pet_Store
{
    public partial class AddCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ProductCategoryModel model = new ProductCategoryModel();
            ProductCategory pc = createProductCategory();

            lblResult.Text = model.InsertProductCategory(pc);

        }

        private ProductCategory createProductCategory()
        {
            ProductCategory p = new ProductCategory();
            p.CategoryName = T1.Text;

            return p;
        }

       
    }
}