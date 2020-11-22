using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_Commerce_Pet_Store
{
    public class ShoppingCartModel
    {
        public string InsertCart(ShoppingCart cart)
        {
            try
            {
                QuickCarEntities1 db = new QuickCarEntities1();
                db.ShoppingCarts.Add(cart);
                db.SaveChanges();

                return cart.DatePurchased + "was created";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public string UpdateCart(int id, ShoppingCart cart)
        {
            try
            {
                QuickCarEntities1 db = new QuickCarEntities1();

                ShoppingCart c = db.ShoppingCarts.Find(id);

                c.DatePurchased = cart.DatePurchased;
                c.StartDate = cart.StartDate;
                c.Duration = cart.Duration;
                c.TotalCost = cart.TotalCost;

                db.SaveChanges();
                return cart.DatePurchased + "was successfully updated";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public string DeleteShoppingCart(int id)
        {
            try
            {
                QuickCarEntities1 db = new QuickCarEntities1();
                ShoppingCart cart = db.ShoppingCarts.Find(id);

                db.ShoppingCarts.Attach(cart);
                db.ShoppingCarts.Remove(cart);
                db.SaveChanges();

                return cart.DatePurchased + "was deleted successfully";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        

        public List<ShoppingCart> GetOrdersInCart(int userid)
        {
            QuickCarEntities1 db = new QuickCarEntities1();
            List<ShoppingCart> orders = (from x in db.ShoppingCarts where x.UserId == userid orderby x.DatePurchased select x).ToList();

            return orders;
        }

        

        public void UpdateDuration(int id, DateTime start, DateTime end)
        {
            QuickCarEntities1 db = new QuickCarEntities1();
            ShoppingCart cart = db.ShoppingCarts.Find(id);
            cart.StartDate = start;
            cart.ReturnDate = end;

            db.SaveChanges();
        }

       
    }
}