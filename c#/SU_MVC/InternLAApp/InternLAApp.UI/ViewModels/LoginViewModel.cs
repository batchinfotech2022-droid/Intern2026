using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace InternLAApp.UI.ViewModels
{
    public class LoginViewModel
    {
        private string _username;
        private string _password;

        [Required]
        public string UserName
        {
            get { return _username; }
            set { _username = value; }
        }

        [Required]
        [DataType(DataType.Password)]
        public string Password
        {
            get { return _password; }
            set { _password = value; }
        }

        public LoginViewModel()
        {
            _username = "Undefined";
            _password = "";
        }

        public LoginViewModel(string UserName, string Password)
        {
            _username = UserName;
            _password = Password;
        }
    }
}