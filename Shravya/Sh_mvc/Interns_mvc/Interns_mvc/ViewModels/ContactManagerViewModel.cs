using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using Interns_mvc.Models;

namespace Interns_mvc.ViewModels
{
    public class ContactManagerViewModel
    {
        private int _id;
        private string _firstName;
        private string _lastName;
        private string _email;
        private string _phone;
        private string _createdBy;
        private DateTime _createdDate;
        private string _modifiedBy;
        private DateTime _modifiedDate;
        private bool _isDeleted;


        [Required]
        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }
        [Required]
        public string FirstName
        {
            get { return _firstName; }
            set { _firstName = value; }
        }
        [Required]
        public string LastName
        {
            get { return _lastName; }
            set { _lastName = value; }

        }
        [Required]
        [Display(Name = "Email Address")]
        [EmailAddress(ErrorMessage = "Enter a valid email address")]
        public string Email
        {
            get { return _email; }
            set { _email = value; }
        }
        [Required]
         [StringLength(10, ErrorMessage = "Phone number must be exactly 10 digits")]
        public string Phone
        {
            get { return _phone; }
            set { _phone = value; }
        }
        [Required]
        [Display(Name ="CreatedBy")]
        public string CreatedBy
        {
            get { return _createdBy; }
            set { _createdBy = value; }
        }
        [Required]
        [Display(Name ="CreatedAt")]
        public DateTime CreatedDate
        {
            get { return _createdDate; }
            set { _createdDate = value; }
        }
        [Required]
        [Display(Name = "CreatedBy")]
        public string ModifiedBy
        {
            get { return _modifiedBy; }
            set { _modifiedBy = value; }
        }
        [Required]
        public DateTime ModifiedDate
        {
            get { return _modifiedDate; }
            set { _modifiedDate = value; }
        }
        [Required]
        public bool IsDeleted
        {
            get { return _isDeleted; }
            set { _isDeleted = value; }
        }

        public ContactManagerViewModel()
        {
            _id = 0;
            _firstName = "undefined";
            _lastName = "undefined";
            _email = "undefined";
            _phone = "undefined";
            _createdBy = "undefined";
            _createdDate = DateTime.MinValue;
            _modifiedBy = "undefined";
            _modifiedDate = DateTime.MinValue;
            _isDeleted = true;
        }

        public ContactManagerViewModel(int Id, string FirstName, string LastName, string Email, string Phone, string CreatedBy, DateTime CreatedDate, string ModifiedBy, DateTime ModifiedDate, bool IsDeleted)
        {
            _id = Id;
            _firstName = FirstName;
            _lastName = LastName;
            _email = Email;
            _phone = Phone;
            _createdBy = CreatedBy;
            _createdDate = CreatedDate;
            _modifiedBy = ModifiedBy;
            _modifiedDate = ModifiedDate;
            _isDeleted = IsDeleted;
        }
        public ContactManagerViewModel(ContactManager manager)
        {
            _id = manager.Id;
            _firstName = manager.FirstName;
            _lastName = manager.LastName;
            _email = manager.Email;
            _phone = manager.Phone;
            _createdBy = manager.CreatedBy;
            _createdDate = manager.CreatedDate;
            _modifiedBy = manager.ModifiedBy;
            _modifiedDate = manager.ModifiedDate;
            _isDeleted = manager.IsDeleted;
        }

    }
}