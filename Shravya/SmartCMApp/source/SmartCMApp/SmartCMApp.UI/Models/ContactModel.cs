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
            [EmailAddress]
            public string Email
            {
                get { return _contact.Email; }
                set { _contact.Email = value; }
            }

            [Required]
            [RegularExpression(@"^\d{10}$", ErrorMessage = "Phone must be 10 digits")]
            public string Phone
            {
                get { return _contact.Phone; }
                set { _contact.Phone = value; }
            }

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
