using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_Commerce_Pet_Store
{
    public class ProductModel
    {
        
            public string InsertProduct(Product product)
        {
            try
            {
                QuickCarEntities1 db = new QuickCarEntities1();
                db.Products.Add(product);
                db.SaveChanges();

                return product.ProductName + "was successfully Inserted";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public string UpdateProduct(int id, Product product)
        {
            try
            {
                QuickCarEntities1 db = new QuickCarEntities1();

                Product p = db.Products.Find(id);

                p.ProductName = product.ProductName;
                p.ProductCategory = product.ProductCategory;
                p.ProductDesc = product.ProductDesc;
                p.ProductPrice = product.ProductPrice;
                p.ProductImage = product.ProductImage;

                db.SaveChanges();
                return product.ProductName + "was successfully updated";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public string DeleteProduct(int id)
        {
            try
            {
                QuickCarEntities1 db = new QuickCarEntities1();
                Product product = db.Products.Find(id);

                db.Products.Attach(product);
                db.Products.Remove(product);
                db.SaveChanges();

                return product.ProductName + "was successfully deleted";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public Product GetProduct(int id)
        {
            try
            {
                using (QuickCarEntities1 db = new QuickCarEntities1())
                {
                    Product product = db.Products.Find(id);
                    return product;
                }
            }
            catch (Exception)
            {
                return null;
            }
        }

        public List<Product> GetAllProducts()
        {
            try
            {
                using (QuickCarEntities1 db = new QuickCarEntities1())
                {
                    List<Product> products = (from x in db.Products select x).ToList();

                    return products;
                }
            }
            catch (Exception)
            {
                return null;
            }
        }

        public List<Product> GetProductsByCategory(int categoryId)
        {
            try
            {
                using (QuickCarEntities1 db = new QuickCarEntities1())
                {
                    List<Product> products = (from x in db.Products where x.CategoryID == categoryId select x).ToList();

                    return products;
                }
            }
            catch (Exception)
            {
                return null;
            }
        }
    }
}
