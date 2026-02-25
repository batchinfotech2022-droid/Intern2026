using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using UserTaskApp.BL;

namespace UserTaskApp.UI.ViewModels
{
    public class LoginViewModel
    {
            private string _userName;
            private string _password;

            [Display(Name = "User Name")]
            [Required(ErrorMessage = "User name is required")]
            [EmailAddress(ErrorMessage = "Enter a valid email address")]
            public string UserName
            {
                get { return _userName; }
                set { _userName = value; }
            }

            [Display(Name = "Password")]
            [Required(ErrorMessage = "Password is required")]
            [DataType(DataType.Password)]
            public string Password
            {
                get { return _password; }
                set { _password = value; }
            }

            public LoginViewModel()
            {
                _userName = string.Empty;
                _password = string.Empty;
            }

            public LoginViewModel(string userName, string password)
            {
                _userName = userName;
                _password = password;
            }
        }
    }