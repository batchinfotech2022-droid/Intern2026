using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using InternLAApp.BL;

namespace InternLAApp.UI.ViewModels
{
    public class RegisterViewModel
    {
        private int _id;
        private string _username;
        private string _password;
        private string _firstName;
        private string _lastName;
        private string _phone;
        private string _address;
        private bool _isSystemUser;
        private bool _isSystemAdmin;
        private bool _isSystemSupervisor;
        private bool _isActive;

        [Required]
        public int Id { get { return _id; } set { _id = value; } }

        [Required(ErrorMessage = "Username is required")]
        [StringLength(50, MinimumLength = 3, ErrorMessage = "Username must be at least 3 characters")]
        public string UserName { get { return _username; } set { _username = value; } }

        [Required(ErrorMessage = "Password is required")]
        [StringLength(100, MinimumLength = 5, ErrorMessage = "Password must be at least 5 characters")]
        public string Password { get { return _password; } set { _password = value; } }

        [Required(ErrorMessage = "First Name is required")]
        public string FirstName { get { return _firstName; } set { _firstName = value; } }

        [Required]
        public string LastName { get { return _lastName; } set { _lastName = value; } }

        [Required]
        public string Phone { get { return _phone; } set { _phone = value; } }

        [Required]
        public string Address { get { return _address; } set { _address = value; } }

        public bool IsSystemUser { get { return _isSystemUser; } set { _isSystemUser = value; } }
        public bool IsSystemAdmin { get { return _isSystemAdmin; } set { _isSystemAdmin = value; } }
        public bool IsSystemSupervisor { get { return _isSystemSupervisor; } set { _isSystemSupervisor = value; } }
        public bool IsActive { get { return _isActive; } set { _isActive = value; } }
        public bool IsLocked { get; set; }


        public RegisterViewModel()
        {
            _id = 0;
            _username = "Undefined";
            _password = "";
            _firstName = "Undefined";
            _lastName = "Undefined";
            _phone = "Undefined";
            _address = "Undefined";
            _isSystemUser = false;
            _isSystemAdmin = false;
            _isSystemSupervisor = false;
            _isActive = true;
        }

        public RegisterViewModel(int Id, string UserName, string Password,
                                 string FirstName, string LastName,
                                 string Phone, string Address,
                                 bool IsSystemUser, bool IsSystemAdmin,
                                 bool IsSystemSupervisor, bool IsActive)
        {
            _id = Id;
            _username = UserName;
            _password = Password;
            _firstName = FirstName;
            _lastName = LastName;
            _phone = Phone;
            _address = Address;
            _isSystemUser = IsSystemUser;
            _isSystemAdmin = IsSystemAdmin;
            _isSystemSupervisor = IsSystemSupervisor;
            _isActive = IsActive;
        }

        public RegisterViewModel(Register register)
        {
            _id = register.Id;
            _username = register.UserName;
            _password = register.Password;
            _firstName = register.FirstName;
            _lastName = register.LastName;
            _phone = register.Phone;
            _address = register.Address;
            _isSystemUser = register.IsSystemUser;
            _isSystemAdmin = register.IsSystemAdmin;
            _isSystemSupervisor = register.IsSystemSupervisor;
            _isActive = register.IsActive;
        }
    }
}