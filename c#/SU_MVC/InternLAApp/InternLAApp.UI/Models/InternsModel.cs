using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using InternLAApp.BL;

namespace InternLAApp.UI.Models
{
    public class InternsModel
    {
        private Interns _intern;

        #region Props

        [Display(Name = "ID")]
        public int Id { get { return _intern.Id; } set { _intern.Id = value; } }

        [Display(Name = "Full Name")]
        [Required]
        [DisplayFormat(ConvertEmptyStringToNull = false)]
        public string FullName { get { return _intern.FullName; } set { _intern.FullName = value; } }

        [Display(Name = "Date of Joining")]
        [Required]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime DateOfJoining { get { return _intern.DateOfJoining; } set { _intern.DateOfJoining = value; } }

        [Display(Name = "Available Leave")]
        [Required]
        public int AvailableLeave { get { return _intern.AvailableLeave; } set { _intern.AvailableLeave = value; } }

        [Display(Name = "Created By")]
        [DisplayFormat(ConvertEmptyStringToNull = false)]
        public string CreatedBy { get { return _intern.CreatedBy; } set { _intern.CreatedBy = value; } }

        [Display(Name = "Created Date")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime CreatedDate { get { return _intern.CreatedDate; } set { _intern.CreatedDate = value; } }

        [Display(Name = "Modified By")]
        [Required]
        [DisplayFormat(ConvertEmptyStringToNull = false)]
        public string ModifiedBy { get { return _intern.ModifiedBy; } set { _intern.ModifiedBy = value; } }

        [Display(Name = "Modified Date")]
        [Required]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime ModifiedDate { get { return _intern.ModifiedDate; } set { _intern.ModifiedDate = value; } }

        [Display(Name = "Is Deleted")]
        public bool IsDeleted { get { return _intern.IsDeleted; } set { _intern.IsDeleted = value; } }

        public Interns Intern { get { return _intern; } set { _intern = value; } }

        #endregion

        #region CTOR

        // Default constructor
        public InternsModel()
        {
            _intern = new Interns();
        }

        // Parameterized constructor wrapping an existing Intern object
        public InternsModel(Interns intern)
        {
            _intern = intern;
        }

        #endregion
    }
}