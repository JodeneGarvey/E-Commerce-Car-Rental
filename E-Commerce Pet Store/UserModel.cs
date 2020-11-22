using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_Commerce_Pet_Store
{
    public class UserModel
    {
        public string InsertUser(User user)
        {
            try
            {
                QuickCarEntities1 db = new QuickCarEntities1();
                db.Users.Add(user);
                db.SaveChanges();

                return user.FullName + "created an account";
            }
            catch(Exception e)
            {
                return "Error:" + e;
            }
        }

        public string UpdateProduct(int id, User user)
        {
            try
            {
                QuickCarEntities1 db = new QuickCarEntities1();

                User cus = db.Users.Find(id);

                cus.FullName = user.FullName;
                cus.DateofBirth = user.DateofBirth;
                cus.ContactNumber = user.ContactNumber;
                cus.EmailAddress = user.EmailAddress;
                cus.StreetAddress = user.StreetAddress;
                cus.District = user.District;
                cus.Parish = user.Parish;
                cus.FullAddress = user.FullAddress;
                cus.UserName = user.UserName;
                cus.Password = user.Password;

                db.SaveChanges();
                return user.UserName + "was successfully updated";
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
                User user = db.Users.Find(id);

                db.Users.Attach(user);
                db.Users.Remove(user);
                db.SaveChanges();

                return user.UserName + "was deleted successfully";
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
                using (QuickCarEntities1 db = new QuickCarEntities1())
                {
                    User user = db.Users.Find(id);
                    return user;
                }
            }
            catch (Exception)
            {
                return null;
            }
        }

        public List<User> GetAllUsers()
        {
            try
            {
                using (QuickCarEntities1 db = new QuickCarEntities1())
                {
                    List<User> users = (from x in db.Users select x).ToList();

                    return users;
                }
            }
            catch (Exception)
            {
                return null;
            }
        }
    }
}