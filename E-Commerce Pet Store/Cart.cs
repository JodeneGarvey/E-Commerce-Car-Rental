using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_Commerce_Pet_Store
{
    public class Cart
    {
        public List<CartItem> Items { get; set; }

        public Cart()
        {
            Items = new List<CartItem>();
        }

        private int ItemIndexOf(int ID)
        {
            foreach (CartItem item in Items)
            {
                if (item.ID == ID)
                {
                    return Items.IndexOf(item);
                }
            }
            return -1;
        }

        public void Insert(CartItem item)
        {
            int index = ItemIndexOf(item.ID);
            if (index == -1)
            {
                Items.Add(item);
            }
            else
            {

                Items[index].Duration++;
            }
        }

        public void Delete(int rowID)
        {
            Items.RemoveAt(rowID);
        }

        public void Update(int rowID, int Duration)
        {
            
            if (Duration > 0)
            {
                Items[rowID].Duration = Duration;
            }
            else
            {
                Delete(rowID);
            }
        }

        public double GrandTotal
        {
            get
            {
                if (Items == null)
                {
                    return 0;
                }
                else
                {
                    double grandTotal = 0;
                    foreach (CartItem item in Items)
                    {
                        grandTotal += item.Duration * item.ProductPrice;
                    }
                    return grandTotal;
                }
            }
        }
    }
}