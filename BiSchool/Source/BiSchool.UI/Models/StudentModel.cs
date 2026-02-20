using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using BiSchool.BL;

namespace BiSchool.UI.Models
{
    public class StudentModel
    {
        private Student _student;

        [Display(Name = "Student ID")]
        public int Id { get { return _student.Id; } set { _student.Id = value; } }

        [Required(ErrorMessage = "Full Name is required")]
        [StringLength(50, ErrorMessage = "Maximum 50 characters allowed")]
        [Display(Name = "Full Name")]
        public string FullName { get { return _student.FullName; } set { _student.FullName = value; } }

        [Required(ErrorMessage = "Email is required")]
        [EmailAddress(ErrorMessage = "Invalid Email format")]
        [StringLength(100)]
        public string Email { get { return _student.Email; } set { _student.Email = value; } }

        [Required(ErrorMessage = "Password is required")]
        [StringLength(100, MinimumLength = 6, ErrorMessage = "Minimum 6 characters required")]
        [DataType(DataType.Password)]
        public string Password { get { return _student.Password; } set { _student.Password = value; } }

        [Required(ErrorMessage = "Address is required")]
        [StringLength(250)]
        public string Address { get { return _student.Address; } set { _student.Address = value; } }

        [Required(ErrorMessage = "Phone number is required")]
        [Phone(ErrorMessage = "Invalid phone number")]
        [StringLength(15)]
        public string Phone { get { return _student.Phone; } set { _student.Phone = value; } }

        [Display(Name = "Is Admin")]
        public bool IsAdmin { get { return _student.IsAdmin; } set { _student.IsAdmin = value; } }

        public string CreatedBy { get { return _student.CreatedBy; } set { _student.CreatedBy = value; } }
        public DateTime CreatedDate { get { return _student.CreatedDate; } set { _student.CreatedDate = value; } }
        public string ModifiedBy { get { return _student.ModifiedBy; } set { _student.ModifiedBy = value; } }
        public DateTime ModifiedDate { get { return _student.ModifiedDate; } set { _student.ModifiedDate = value; } }
        public bool IsDeleted { get { return _student.IsDeleted; } set { _student  .IsDeleted = value; } }
        public Student student { get { return _student; } set { _student = value; } }

        public StudentModel()
        {
            _student = new Student();

        }
        public StudentModel(Student student)
        {
            _student = student;
        }
    }
}