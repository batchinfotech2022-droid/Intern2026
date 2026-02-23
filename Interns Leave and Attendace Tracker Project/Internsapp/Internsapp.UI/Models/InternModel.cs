using System;
using System.ComponentModel.DataAnnotations;
using Internsapp.BL;

namespace Internsapp.UI.Models
{
    public class InternModel
    {
        private Intern _intern;

        [Display(Name = "Intern ID")]
        public int Id { get { return _intern.Id; } set { _intern.Id = value; } }

        [Required]
        [Display(Name = "First Name")]
        public string FirstName { get { return _intern.FirstName; } set { _intern.FirstName = value; } }

        [Required]
        [Display(Name = "Last Name")]
        public string LastName { get { return _intern.LastName; } set { _intern.LastName = value; } }

        [Required]
        [Display(Name = "Username")]
        public string UserName { get { return _intern.UserName; } set { _intern.UserName = value; } }

        [Required]
        [DataType(DataType.Password)]
        public string Password { get { return _intern.Password; } set { _intern.Password = value; } }

        [Display(Name = "Date Of Joining")]
        public DateTime DateOfJoining { get { return _intern.DateOfJoining; } set { _intern.DateOfJoining = value; } }

        public int AvailableLeave { get { return _intern.AvailableLeave; } set { _intern.AvailableLeave = value; } }

        public string Address { get { return _intern.Address; } set { _intern.Address = value; } }

        public string Phone { get { return _intern.Phone; } set { _intern.Phone = value; } }

        public bool IsSystemAdmin { get { return _intern.IsSystemAdmin; } set { _intern.IsSystemAdmin = value; } }

        public bool IsActive { get { return _intern.IsActive; } set { _intern.IsActive = value; } }

        public bool IsLocked { get { return _intern.IsLocked; } set { _intern.IsLocked = value; } }

        public int NoOfAttempts { get { return _intern.NoOfAttempts; } set { _intern.NoOfAttempts = value; } }

        public string CreatedBy { get { return _intern.CreatedBy; } set { _intern.CreatedBy = value; } }

        public DateTime CreatedDate { get { return _intern.CreatedDate; } set { _intern.CreatedDate = value; } }

        public string ModifiedBy { get { return _intern.ModifiedBy; } set { _intern.ModifiedBy = value; } }

        public DateTime ModifiedDate { get { return _intern.ModifiedDate; } set { _intern.ModifiedDate = value; } }

        public bool IsDeleted { get { return _intern.IsDeleted; } set { _intern.IsDeleted = value; } }

        public Intern intern
        {
            get { return _intern; }
            set { _intern = value; }
        }

        public InternModel()
        {
            _intern = new Intern();
        }

        public InternModel(Intern intern)
        {
            _intern = intern;
        }
    }
}