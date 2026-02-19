using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using InternLAApp.UI.ViewModels;

namespace InternLAApp.UI.Models
{
    public class Register
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
        private bool _isLocked;

        public int Id { get; set; }

        [Required(ErrorMessage = "Username is required")]
        [StringLength(50, MinimumLength = 3, ErrorMessage = "Username must be at least 3 characters")]
        public string UserName { get; set; }

        [Required(ErrorMessage = "Password is required")]
        [StringLength(100, MinimumLength = 5, ErrorMessage = "Password must be at least 5 characters")]
        public string Password { get; set; }

        [Required(ErrorMessage = "First Name is required")]
        public string FirstName { get; set; }

        [Required(ErrorMessage = "Last Name is required")]
        public string LastName { get; set; }

        [Required(ErrorMessage = "Phone number is required")]
        [Phone(ErrorMessage = "Invalid phone number")]
        public string Phone { get; set; }

        [Required(ErrorMessage = "Address is required")]
        public string Address { get; set; }

        public bool IsSystemUser { get; set; }
        public bool IsSystemAdmin { get; set; }
        public bool IsSystemSupervisor { get; set; }

        [Required]
        public bool IsActive { get; set; }

        public Register()
        {
            _id = 0;
            _username = "Undefined";
            _password = "Undefined";
            _firstName = "Undefined";
            _lastName = "Undefined";
            _phone = "Undefined";
            _address = "Undefined";
            _isSystemUser = false;
            _isSystemAdmin = false;
            _isSystemSupervisor = false;
            _isActive = true;
        }

        public Register(int Id, string UserName, string Password,
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

       
        public Register(RegisterViewModel model)
        {
            _id = model.Id;
            _username = model.UserName;
            _password = model.Password;
            _firstName = model.FirstName;
            _lastName = model.LastName;
            _phone = model.Phone;
            _address = model.Address;
            _isSystemUser = model.IsSystemUser;
            _isSystemAdmin = model.IsSystemAdmin;
            _isSystemSupervisor = model.IsSystemSupervisor;
            _isActive = model.IsActive;
        }
    }
}