using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Register.UI.Models
{
    public class RegisterModel
    {
        public int Id { get; set; }

        [Required]
        public string UserName { get; set; }

        [Required]
        public string Password { get; set; }

        [Required]
        public string FirstName { get; set; }

        public string LastName { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }

        public bool IsSystemUser { get; set; }
        public bool IsSystemAdmin { get; set; }
        public bool IsSystemSupervisor { get; set; }
        public bool IsActive { get; set; }
        public bool IsLocked { get; set; }

        public int NoAttempts { get; set; }
    }
}