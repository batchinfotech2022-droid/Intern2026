using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using UserTaskApp.BL;
namespace UserTaskApp.UI.Models
{
    public class UserModel
    {

        private User _user;

        #region Props 
        [Display(Name = "I D")]
        public int Id { get { return _user.Id; } set { _user.Id = value; } }

        [Display(Name = "User Name")]
        [Required]
        [DisplayFormat(ConvertEmptyStringToNull = false)]
        [EmailAddress(ErrorMessage = "Enter Valid Email")]
        [RegularExpression(@"^[^@\s]+@gmail\.com$", ErrorMessage = "Only Gmail Addresses are alloweded")]
        public string UserName { get { return _user.UserName; } set { _user.UserName = value; } }


        [Display(Name = "FirstName")]
        [Required]
        [DisplayFormat(ConvertEmptyStringToNull = false)]
        public string FirstName { get { return _user.FirstName; } set { _user.FirstName = value; } }

        [Display(Name = "LastName")]
        [Required]
        [DisplayFormat(ConvertEmptyStringToNull = false)]
        public string LastName { get { return _user.LastName; } set { _user.LastName = value; } }

        [Display(Name = "Password")]
        [Required]
        [DisplayFormat(ConvertEmptyStringToNull = false)]
        public string Password { get { return _user.Password; } set { _user.Password = value; } }

        [Display(Name = "Phone")]
        [Required]
        [DisplayFormat(ConvertEmptyStringToNull = false)]
        public string Phone { get { return _user.Phone; } set { _user.Phone = value; } }

        [Display(Name = "Address")]
        [Required]
        [DisplayFormat(ConvertEmptyStringToNull = false)]
        public string Address { get { return _user.Address; } set { _user.Address = value; } }

        [Display(Name = "Role")]
        [Required]
        [DisplayFormat(ConvertEmptyStringToNull = false)]
        public string Role { get { return _user.Role; } set { _user.Role = value; } }

        [Display(Name = "IsActive")]
        [Required]
        public bool IsActive { get { return _user.IsActive; } set { _user.IsActive = value; } }

        [Display(Name = "IsLogged")]
        [Required]
        public bool IsLogged { get { return _user.IsLogged; } set { _user.IsLogged = value; } }

        [Display(Name = "NoAttempts")]
        [Required]
        public int NoAttempts { get { return _user.NoAttempts; } set { _user.NoAttempts = value; } }


        [Display(Name = "IsLocked")]
        [Required]
        public bool IsLocked { get { return _user.IsLocked; } set { _user.IsLocked = value; } }



        [Display(Name = "Created By")]
        [DisplayFormat(ConvertEmptyStringToNull = false)]
        public string CreatedBy { get { return _user.CreatedBy; } set { _user.CreatedBy = value; } }


        [Display(Name = "Created Date")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime CreatedDate { get { return _user.CreatedDate; } set { _user.CreatedDate = value; } }

        [Display(Name = "Modified By")]
        [Required]
        [DisplayFormat(ConvertEmptyStringToNull = false)]
        public string ModifiedBy { get { return _user.ModifiedBy; } set { _user.ModifiedBy = value; } }

        [Display(Name = "Modified Date")]
        [Required]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime ModifiedDate { get { return _user.ModifiedDate; } set { _user.ModifiedDate = value; } }

        [Display(Name = "Is Deleted")] public bool IsDeleted { get { return _user.IsDeleted; } set { _user.IsDeleted = value; } }
    

        public User User { get { return _user; } set { _user = value; } }
        #endregion //Props #region
         public UserModel() 
        {
            _user = new User();
        } 
        public UserModel(User User) 
        {
            _user = User; 
        }
       
    } 
}