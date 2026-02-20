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
       
        [Display(Name = "Name")]
        [Required]
        [DisplayFormat(ConvertEmptyStringToNull = false)] 
        public string Name { get { return _user.Name; } set { _user.Name = value; } }

        
        [Display(Name = "Role")]
        [Required]
        [DisplayFormat(ConvertEmptyStringToNull = false)]
        public string Role { get { return _user.Role; } set { _user.Role = value; } }


        [Display(Name = "Created Date")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)] 
        public DateTime CreatedDate { get { return _user.CreatedDate; } set { _user.CreatedDate = value; } }
        [Display(Name = "Created By")][DisplayFormat(ConvertEmptyStringToNull = false)] 
        public string CreatedBy { get { return _user.CreatedBy; } set { _user.CreatedBy = value; } }
        [Display(Name = "Modified Date")][Required][DataType(DataType.Date)][DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)] 
        public DateTime ModifiedDate { get { return _user.ModifiedDate; } set { _user.ModifiedDate = value; } }
        [Display(Name = "Modified By")][Required][DisplayFormat(ConvertEmptyStringToNull = false)] 
        public string ModifiedBy { get { return _user.ModifiedBy; } set { _user.ModifiedBy = value; } }
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