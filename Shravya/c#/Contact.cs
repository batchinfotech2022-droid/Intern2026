using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CSharp_console_app
{
    internal class Contact
    {
        public int _id;
        public string _fullName;
        public string _email;
        public string _city;
        public string _phoneNumber;
        public string _streetAddress;
        public bool _isActive;
        public string _createdBy;
        public DateTime _createdDate;
        public string _updatedBy;
        public DateTime _updatedDate;
        public bool _isDeleted;

        public Contact()
        {
            _id = 0;
            _fullName = String.Empty;
            _email = String.Empty;
            _city = String.Empty;
            _phoneNumber = String.Empty;
            _streetAddress = String.Empty;
            _isActive = true;
            _createdBy = String.Empty;
            _createdDate = DateTime.Now;
            _updatedBy = String.Empty;
            _updatedDate = DateTime.Now;
            _isDeleted = false;


        }
        public int Id
        {
            get { return _id; }
        }

        public string FullName
        {
            get { return _fullName; }

            set { _fullName = value; }
        }

        public string Email
        {
            get { return _email; }

            set { _email = value; }
        }

        public string City
        {
            get { return _city; }

            set { _city = value; }
        }

        public string PhoneNumber
        {
            get { return _phoneNumber; }
            set { _phoneNumber = value; }
        }

        public string StreetAddress
        {
            get { return _streetAddress; }
            set { _streetAddress = value; }
        }

        public bool isActive
        {
            get { return _isActive; }
            set { _isActive = value; }
        }

        public string CreatedBy
        {
            get { return _createdBy; }
            set { _createdBy = value; }
        }

        public DateTime CreatedDate
        {
            get { return _createdDate; }
            set { _createdDate = value; }
        }

        public string UpdatedBy
        {
            get { return _updatedBy; }
            set { _updatedBy = value; }
        }

        public DateTime UpdatedDate
        {
            get { return _updatedDate; }
            set { _updatedDate = value; }
        }

        public bool isDeleted
        {
            get { return _isDeleted; }
            set { _isDeleted = value; }
        }

        public Contact(int id,string fullName,string email,string city,string phoneNumber,string strretAddress,bool isActive, string createdBy,DateTime createdDate,string updatedBy,DateTime updatedDate,bool isDeleted)
        {
            _id = id;
            _fullName = fullName;
            _email = email;
            _city = city;
            _phoneNumber = phoneNumber; 
            _streetAddress = strretAddress;
            _isActive = isActive;
            _createdBy = createdBy;
            _createdDate = createdDate;
            _updatedBy = updatedBy;
            _updatedDate = updatedDate;
            _isDeleted = isDeleted;


        }
    }

}
