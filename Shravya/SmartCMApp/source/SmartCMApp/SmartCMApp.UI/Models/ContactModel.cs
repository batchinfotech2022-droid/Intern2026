using SmartCMApp.BL;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SmartCMApp.UI.Models
{
    public class ContactModel
    {
            private Contact _contact;

            public int Id
            {
                get { return _contact.Id; }
                set { _contact.Id = value; }
            }

            [Required]
            [Display(Name = "Full Name")]
            public string FullName
            {
                get { return _contact.FullName; }
                set { _contact.FullName = value; }
            }

           

            [Required]
            [RegularExpression(@"^\d{10}$", ErrorMessage = "Phone must be 10 digits")]
            public string Phone
            {
                get { return _contact.Phone; }
                set { _contact.Phone = value; }
            }

        [Required]
            public string City
            {
                get { return _contact.City; }
                set { _contact.City = value; }
            }

            [Required]
            [Display(Name = "Category")]
            public int CategoryId
            {
                get { return _contact.CategoryId; }
                set { _contact.CategoryId = value; }
            }

        [Required]
        [EmailAddress]
        [Display(Name = "Username")]
        public string UserName
        {
            get { return _contact.UserName; }
            set { _contact.UserName = value; }
        }
        [Required]
        public string PassWord
        {
            get { return _contact.PassWord; }
            set { _contact.PassWord = value; }
        }
        public string Role
        {
            get { return _contact.Role; }
            set { _contact.Role = value; }
        }

        public bool IsActive { get { return _contact.IsActive; } set { _contact.IsActive = value; } }
        public bool IsLogged { get { return _contact.IsLogged; } set { _contact.IsLogged = value; } }
        public int NoOfAttempts { get { return _contact.NoOfAttempts; } set { _contact.NoOfAttempts = value; } }
        public string CreatedBy { get { return _contact.CreatedBy; } set { _contact.CreatedBy = value; } }
        public DateTime CreatedDate { get { return _contact.CreatedDate; } set { _contact.CreatedDate = value; } }
        public string ModifiedBy { get { return _contact.ModifiedBy; } set { _contact.ModifiedBy = value; } }
        public DateTime ModifiedDate { get { return _contact.ModifiedDate; } set { _contact.ModifiedDate = value; } }
        public bool IsDeleted { get { return _contact.IsDeleted; } set { _contact.IsDeleted = value; } }

        public List<SelectListItem> CategoryList { get; set; }

            public Contact Contact
            {
                get { return _contact; }
                set { _contact = value; }
            }

            public ContactModel()
            {
                _contact = new Contact();
                CategoryList = new List<SelectListItem>();
            }

            public ContactModel(Contact contact)
            {
                _contact = contact;
                CategoryList = new List<SelectListItem>();
            }
        }
    }
