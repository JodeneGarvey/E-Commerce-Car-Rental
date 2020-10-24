using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_Commerce_Pet_Store
{
    public class ProductCategoryModel
    {
            public string InsertProductCategory(ProductCategory productCategory)
        {
            try
            {
                QuickCarEntities1 db = new QuickCarEntities1();
                db.ProductCategories.Add(productCategory);
                db.SaveChanges();

                return productCategory.CategoryName + "was successfully Inserted";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public string UpdateProductCategory(int id, ProductCategory productCategory)
        {
            try
            {
                QuickCarEntities1 db = new QuickCarEntities1();

                ProductCategory p = db.ProductCategories.Find(id);

                p.CategoryName = productCategory.CategoryName;


                db.SaveChanges();
                return productCategory.CategoryName + "was successfully updated";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public string DeleteProductCategory(int id)
        {
            try
            {
                QuickCarEntities1 db = new QuickCarEntities1();
                Product productCategory = db.Products.Find(id);

                db.Products.Attach(productCategory);
                db.Products.Remove(productCategory);
                db.SaveChanges();

                return productCategory.ProductName + "was successfully deleted";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }
    }
}
