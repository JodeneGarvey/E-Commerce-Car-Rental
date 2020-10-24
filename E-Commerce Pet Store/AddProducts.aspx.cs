using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Collections;

namespace E_Commerce_Pet_Store
{
    public partial class AddProducts : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-US9A784\SQLEXPRESS;Initial Catalog=QuickCar;Integrated Security=True;Pooling=False");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                GetImages();
        }

        protected void b1_Click(object sender, EventArgs e)
        {
            ProductModel productModel = new ProductModel();
            Product product = CreateProduct();

            lblResult.Text = productModel.InsertProduct(product);
           
        }

        private void GetImages()
        {
            try
            {
                string[] images = Directory.GetFiles(Server.MapPath("~/Products/"));

                ArrayList imageList = new ArrayList();
                foreach(string products in images)
                {
                    string imageName = products.Substring(products.LastIndexOf(@"\", StringComparison.Ordinal) + 1);
                    imageList.Add(imageName);
                }

                lblImage.DataSource = imageList;
                lblImage.AppendDataBoundItems = true;
                lblImage.DataBind();
            }
            catch(Exception e)
            {
                lblResult.Text = e.ToString();
            }
        }

        private Product CreateProduct()
        {
            Product product = new Product();

            product.ProductID = t1.Text;
            product.ProductName = t2.Text;
            product.ProductPrice = Convert.ToDouble(t3.Text);
            product.CategoryID = Convert.ToInt32(ddlcat.SelectedValue);
            product.ProductDesc = t5.Text;
            product.ProductImage = lblImage.SelectedValue;

            return product;
        }

        
    }
}