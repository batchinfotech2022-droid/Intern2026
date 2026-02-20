using Internsapp.BL;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Internsapp.UI.Models
{
    public class InternModel
    {
        private Intern _intern;

        public int Id
        {
            get { return _intern.Id; }
            set { _intern.Id = value; }
        }

        [Required]
        [Display(Name = "First Name")]
        public string FirstName
        {
            get { return _intern.FirstName; }
            set { _intern.FirstName = value; }
        }

        [Required]
        [Display(Name = "Last Name")]
        public string LastName
        {
            get { return _intern.LastName; }
            set { _intern.LastName = value; }
        }

        [Display(Name = "User Name")]
        public string UserName
        {
            get { return _intern.UserName; }
            set { _intern.UserName = value; }
        }

        public DateTime DateOfJoining
        {
            get { return _intern.DateOfJoining; }
            set { _intern.DateOfJoining = value; }
        }

        public int AvailableLeave
        {
            get { return _intern.AvailableLeave; }
            set { _intern.AvailableLeave = value; }
        }

        public string Address
        {
            get { return _intern.Address; }
            set { _intern.Address = value; }
        }

        public string Phone
        {
            get { return _intern.Phone; }
            set { _intern.Phone = value; }
        }

        public bool IsActive
        {
            get { return _intern.IsActive; }
            set { _intern.IsActive = value; }
        }

        public Intern Intern
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