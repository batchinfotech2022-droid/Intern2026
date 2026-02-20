using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using UserTaskApp.BL;


namespace UserTaskApp.UI.Models
{
    public class LoginModel
    {
      private Register _register;

            #region Props 
            [Display(Name = "I D")]
            public int Id { get { return _register.Id; } set { _register.Id = value; } }

            [Display(Name = "User Name")]
            [Required]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public string UserName { get { return _register.UserName; } set { _register.UserName = value; } }


            [Display(Name = "FirstName")]
            [Required]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public string FirstName { get { return _register.FirstName; } set { _register.FirstName = value; } }

            [Display(Name = "LastName")]
            [Required]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public string LastName { get { return _register.LastName; } set { _register.LastName = value; } }

            [Display(Name = "Password")]
            [Required]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public string Password { get { return _register.Password; } set { _register.Password = value; } }

            [Display(Name = "Phone")]
            [Required]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public string Phone { get { return _register.Phone; } set { _register.Phone = value; } }

            [Display(Name = "Address")]
            [Required]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public string Address { get { return _register.Address; } set { _register.Address = value; } }

            [Display(Name = "IsSystemAdmin")]
            [Required]
            public bool IsSystemAdmin { get { return _register.IsSystemAdmin; } set { _register.IsSystemAdmin = value; } }

            [Display(Name = "IsSystemAdmin")]
            [Required]
            public bool IsSystemUser { get { return _register.IsSystemUser; } set { _register.IsSystemUser = value; } }

            [Display(Name = "IsSystemSupervisor")]
            [Required]
            public bool IsSystemSupervisor { get { return _register.IsSystemSupervisor; } set { _register.IsSystemSupervisor = value; } }

            [Display(Name = "IsActive")]
            [Required]
            public bool IsActive { get { return _register.IsActive; } set { _register.IsActive = value; } }

            [Display(Name = "IsLocked")]
            [Required]
            public bool IsLocked { get { return _register.IsLocked; } set { _register.IsLocked = value; } }

            [Display(Name = "NoAttempts")]
            [Required]
            public int NoAttempts { get { return _register.NoAttempts; } set { _register.NoAttempts = value; } }



            [Display(Name = "Created By")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public string CreatedBy { get { return _register.CreatedBy; } set { _register.CreatedBy = value; } }


            [Display(Name = "Created Date")]
            [DataType(DataType.Date)]
            [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
            public DateTime CreatedDate { get { return _register.CreatedDate; } set { _register.CreatedDate = value; } }

            [Display(Name = "Modified By")]
            [Required]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public string ModifiedBy { get { return _register.ModifiedBy; } set { _register.ModifiedBy = value; } }

            [Display(Name = "Modified Date")]
            [Required]
            [DataType(DataType.Date)]
            [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
            public DateTime ModifiedDate { get { return _register.ModifiedDate; } set { _register.ModifiedDate = value; } }

            [Display(Name = "Is Deleted")] public bool IsDeleted { get { return _register.IsDeleted; } set { _register.IsDeleted = value; } }
            public Register Register { get { return _register; } set { _register = value; } }


            #endregion //Props #region CTOR 
            public LoginModel()
            {
                _register = new Register();
            }

            public LoginModel(Register Register)
            {
                _register = Register;
            }
        }
    }


