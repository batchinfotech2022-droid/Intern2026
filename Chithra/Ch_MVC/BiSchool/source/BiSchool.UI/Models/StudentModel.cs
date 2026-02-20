using BiSchool.BL;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace BiSchool.UI.Models
{
    public class StudentModel
    {
        private Student _student;

        [DisplayName("ID")]
        public int Id { get { return _student.Id; } set { _student.Id = value; } }

        [Display(Name = "User Name")]
        [Required]
        [DisplayFormat(ConvertEmptyStringToNull = false)]
        public string FullName { get { return _student.FullName; } set { _student.FullName = value; } }

        [Display(Name = "Email")]
        [Required]
        [DisplayFormat(ConvertEmptyStringToNull = false)]
        [EmailAddress(ErrorMessage = "Enter Valid Email")]
        [RegularExpression(@"^[^@\s]+@gmail\.com$", ErrorMessage = "Only Gmail Addresses are alloweded")]
        public string Email { get { return _student.Email; } set { _student.Email = value; } }

        [Display(Name = "Password")]
        [Required]
        [DisplayFormat(ConvertEmptyStringToNull = false)]

        public string Password { get { return _student.Password; } set { _student.Password = value; } }

        [Display(Name = "Address")]
        [Required]
        [DisplayFormat(ConvertEmptyStringToNull = false)]
        public string Address { get { return _student.Address; } set { _student.Address = value; } }

        [Display(Name = "Phone")]
        [Required]
        [DisplayFormat(ConvertEmptyStringToNull = false)]

        public string Phone { get { return _student.Phone; } set { _student.Phone = value; } }

        [Display(Name = "IsActive")]
        [Required]
        public bool IsAdmin { get { return _student.IsAdmin; } set { _student.IsAdmin = value; } }

        
      
        public string CreatedBy { get { return _student.CreatedBy; } set { _student.CreatedBy = value; } }


       
        
        public DateTime CreatedDate { get { return _student.CreatedDate; } set { _student.CreatedDate = value; } }

  
        public string ModifiedBy { get { return _student.ModifiedBy; } set { _student.ModifiedBy = value; } }

        
        public DateTime ModifiedDate { get { return _student.ModifiedDate; } set { _student.ModifiedDate = value; } }

        public bool IsDeleted { get { return _student.IsDeleted; } set { _student.IsDeleted = value; } }


        public Student Student { get { return _student; } set { _student = value; } }

        public StudentModel()
        {
            _student = new Student();
        }
        public StudentModel(Student Student)
        {
            _student = Student;
        }
    }
}