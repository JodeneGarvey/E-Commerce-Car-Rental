using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_Commerce_Pet_Store
{
    public class UserModel
    {
        public string InsertUser(User customer)
        {
            try
            {
                QuickCarEntities1 db = new QuickCarEntities1();
                db.Users.Add(customer);
                db.SaveChanges();

                return customer.FullName + "was successfully Inserted";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public string UpdateUser(int id, User customer)
        {
            try
            {
                QuickCarEntities1 db = new QuickCarEntities1();

                User cus = db.Users.Find(id);

                cus.FullName = customer.FullName;
                cus.DateofBirth = customer.DateofBirth;
                cus.ContactNumber = customer.ContactNumber;
                cus.EmailAddress = customer.EmailAddress;
                cus.StreetAddress = customer.StreetAddress;
                cus.District = customer.District;
                cus.Parish = customer.Parish;
                cus.FullAddress = customer.FullAddress;
                cus.UserName = customer.UserName;
                cus.Password = customer.Password;

                db.SaveChanges();
                return customer.FullName + "was successfully updated";

            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public string DeleteUser(int id)
        {
            try
            {
                QuickCarEntities1 db = new QuickCarEntities1();
                User customer = db.Users.Find(id);

                db.Users.Attach(customer);
                db.Users.Remove(customer);
                db.SaveChanges();

                return customer.FullName + "was successfully deleted";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public User GetUser(int id)
        {
            try
            {
                using(QuickCarEntities1 db = new QuickCarEntities1())
                {
                    User customer = db.Users.Find(id);
                    return customer;
                }
            }
            catch (Exception)
            {
                return null;
            }
        }

        public List<User> GetAllCustomers()
        {
            try
            {
                using(QuickCarEntities1 db = new QuickCarEntities1())
                {
                    List<User> customers = (from x in db.Users select x).ToList();

                    return customers;
                }
            }
            catch(Exception)
            {
                return null;
            }
        }
    }
}