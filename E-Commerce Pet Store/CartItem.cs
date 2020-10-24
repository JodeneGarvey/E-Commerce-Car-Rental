using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_Commerce_Pet_Store
{
    public class CartItem
    {
        public int ID { get; set; }

        public string ProductID { get; set; }

        public string ProductName { get; set; }

        public string ProductDescription { get; set; }

        public string ProductImage { get; set; }

        public double ProductPrice { get; set; }
        public int Duration { get; set; }

        public CartItem()
        {
            
        }

        public CartItem(int ID, string ProductID, string ProductName, string ProductDescription, string ProductImage, double ProductPrice, int Duraton)
        {
            this.ID = ID;
            this.ProductID = ProductID;
            this.ProductName = ProductName;
            this.ProductDescription = ProductDescription;
            this.ProductImage = ProductImage;
            this.ProductPrice = ProductPrice;
            this.Duration = Duration;
            Duration = 1;
        }
    }
}