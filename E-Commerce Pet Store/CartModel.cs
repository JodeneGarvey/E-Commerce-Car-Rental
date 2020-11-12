using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_Commerce_Pet_Store
{
    public class CartModel
    {
        public string InsertCart(ShoppingCart cart)
        {
            try
            {
                QuickCarEntities1 db = new QuickCarEntities1();
                db.ShoppingCarts.Add(cart);
                db.SaveChanges();

                return cart.DatePurchased + "was added successfully";
            }
            catch(Exception e)
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

                c.UserId = cart.UserId;
                c.ProductID = cart.ProductID;
                c.DatePurchased = cart.DatePurchased;
                c.StartDate = cart.StartDate;
                c.ReturnDate = cart.ReturnDate;
                c.Duration = cart.Duration;
                c.TotalCost = cart.TotalCost;

                db.SaveChanges();
                return cart.DatePurchased + "was successfully Updated";
            }
            catch(Exception e)
            {
                return "Error:" + e;
            }
        }

        public string DeleteCart(int id)
        {
            try
            {
                QuickCarEntities1 db = new QuickCarEntities1();
                ShoppingCart cart = db.ShoppingCarts.Find(id);

                db.ShoppingCarts.Attach(cart);
                db.ShoppingCarts.Remove(cart);
                db.SaveChanges();

                return cart.DatePurchased + "was successfully deleted";
            }
            catch(Exception e)
            {
                return "Error:" + e;
            }
        }

        public ShoppingCart GetCart(int id)
        {
            try
            {
                using(QuickCarEntities1 db = new QuickCarEntities1())
                {
                    ShoppingCart cart = db.ShoppingCarts.Find(id);
                    return cart;
                }
            }
            catch(Exception)
            {
                return null;
            }
        }

        public List<ShoppingCart> GetShoppingCarts(int id)
        {
            try
            {
                using(QuickCarEntities1 db = new QuickCarEntities1())
                {
                    List<ShoppingCart> carts = (from x in db.ShoppingCarts select x).ToList();

                    return carts;
                }
            }
            catch(Exception)
            {
                return null;
            }
        }

        public List<ShoppingCart> GetShoppingCartbyUser(int userid)
        {
            try
            {
                using(QuickCarEntities1 db = new QuickCarEntities1())
                {
                    List<ShoppingCart> cart = (from x in db.ShoppingCarts where x.UserId == userid select x).ToList();

                    return cart;
                }
            }
            catch(Exception)
            {
                return null;
            }
        }
    }
}