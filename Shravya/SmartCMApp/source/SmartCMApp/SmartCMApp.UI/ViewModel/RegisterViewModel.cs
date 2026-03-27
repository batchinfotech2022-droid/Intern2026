using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace SmartCMApp.UI.ViewModel
{
    public class RegisterViewModel
    {
            private string _fullName;
            private string _userName;
            private string _phone;
            private string _city;
            private int _categoryId;
            private string _password;

            #region Properties

            [Required]
            [Display(Name = "Full Name")]
            public string FullName
            {
                get { return _fullName; }
                set { _fullName = value; }
            }

            [Required]
            [EmailAddress(ErrorMessage = "Enter valid email")]
            [RegularExpression(@"^[^@\s]+@gmail\.com$",
                ErrorMessage = "Only Gmail addresses are allowed")]
            public string UserName
            {
                get { return _userName; }
                set { _userName = value; }
            }

            [Required]
            [RegularExpression(@"^\d{10}$",
                ErrorMessage = "Phone must be 10 digits")]
            public string Phone
            {
                get { return _phone; }
                set { _phone = value; }
            }

            [Required]
            public string City
            {
                get { return _city; }
                set { _city = value; }
            }

            [Required]
            public int CategoryId
            {
                get { return _categoryId; }
                set { _categoryId = value; }
            }

            [Required]
            [DataType(DataType.Password)]
            public string PassWord
            {
                get { return _password; }
                set { _password = value; }
            }

            #endregion

            #region Constructor

            public RegisterViewModel()
            {
                _fullName = "";
                _userName = "";
                _phone = "";
                _city = "";
                _categoryId = 0;
                _password = "";
            }

            #endregion

            public RegisterViewModel(string fullName,string  userName,string phone,string city,int categoryId,string password)
        {
            _fullName = fullName;
            _userName = userName;
            _phone = phone;
            _city = city;
            _categoryId = categoryId;
            _password = password;
        }
        }
    }
