using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_Commerce_Pet_Store
{
    public class Users
    {
        public int Id { get; set; }

        public string FullName { get; set; }

        public DateTime DateofBirth { get; set; }

        public int ContactNumber { get; set; }

        public string EmailAddress { get; set; }

        public string StreetAddress { get; set; }

        public string District { get; set; }

        public string Parish { get; set; }

        public string FullAddress { get; set; }

        public string UserName { get; set; }

        public string Password { get; set; }

        public Users(int id, string fullName, DateTime dateofBirth, int contactNumber, string emailAddress, string streetAddress, string district, string parish, string fullAddress, string userName, string password)
        {
            Id = id;
            FullName = fullName;
            DateofBirth = dateofBirth;
            ContactNumber = contactNumber;
            EmailAddress = emailAddress;
            StreetAddress = streetAddress;
            District = district;
            Parish = parish;
            FullAddress = fullAddress;
            UserName = userName;
            Password = password;
        }

        public Users(string fullName, DateTime dateofBirth, int contactNumber, string emailAddress, string streetAddress, string district, string parish, string fullAddress, string userName, string password)
        {
            FullName = fullName;
            DateofBirth = dateofBirth;
            ContactNumber = contactNumber;
            EmailAddress = emailAddress;
            StreetAddress = streetAddress;
            District = district;
            Parish = parish;
            FullAddress = fullAddress;
            UserName = userName;
            Password = password;
        }
    }
}