using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Interns_MVC.ViewModels
{
    public class LoginViewModel
    {
        [DisplayName("User")]
        public string username
        { get; set; }
        [Required]
        public string password { get; set; }
        [DisplayName("Email")]
        public string email
        { get; set; }


        public LoginViewModel()
        {

        }

        public LoginViewModel(string username, string password, string email)
        {
            this.username = username;
            this.password = password;
            this.email = email;
        }
    }
}

