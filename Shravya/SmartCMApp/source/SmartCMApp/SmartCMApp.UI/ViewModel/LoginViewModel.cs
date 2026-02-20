using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using SmartCMApp.BL;

namespace SmartCMApp.UI.ViewModel
{
    public class LoginViewModel
    {
     
        private string _userName;
        private string _password;
       



        #region Properties


        [Required]
        [EmailAddress(ErrorMessage = "Enter valid email")]
        [RegularExpression(@"^[^@\s]+@gmail\.com$",
 ErrorMessage = "Only Gmail addresses are allowed")]
        public string UserName { get { return _userName; } set { _userName = value; } }

        [Required]
        [DataType(DataType.Password)]
        public string Password { get { return _password; } set { _password = value; } }
        

        #endregion

        #region Constructors

        public LoginViewModel()
        {
           
            _userName = "";
            _password = "";
           
        }

        public LoginViewModel(
                        string userName,
                        string password
                        )
        {
           
            _userName = userName;
            _password = password;
            
        }

        #endregion
    }
}

