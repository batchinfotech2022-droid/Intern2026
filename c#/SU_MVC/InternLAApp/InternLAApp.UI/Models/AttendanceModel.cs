using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using InternLAApp.BL;

namespace InternLAApp.UI.Models
{
    public class AttendanceModel
    {

        private Attendance _attendance;

        #region Properties

        [Display(Name = "ID")]
        public int Id
        {
            get { return _attendance.Id; }
            set { _attendance.Id = value; }
        }

        [Required(ErrorMessage = "Intern is required")]
        [Display(Name = "Intern")]
        public int InternId
        {
            get { return _attendance.InternId; }
            set { _attendance.InternId = value; }
        }

        [Required(ErrorMessage = "Date is required")]
        [DataType(DataType.Date)]
        [Display(Name = "Attendance Date")]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime AttendanceDate
        {
            get { return _attendance.AttendanceDate; }
            set { _attendance.AttendanceDate = value; }
        }

        [Required(ErrorMessage = "Status is required")]
        [Display(Name = "Status")]
        [StringLength(20)]
        public string Status
        {
            get { return _attendance.Status; }
            set { _attendance.Status = value; }
        }

        [Display(Name = "Created By")]
        public string CreatedBy
        {
            get { return _attendance.CreatedBy; }
            set { _attendance.CreatedBy = value; }
        }

        [Display(Name = "Created Date")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime CreatedDate
        {
            get { return _attendance.CreatedDate; }
            set { _attendance.CreatedDate = value; }
        }

        [Display(Name = "Modified By")]
        public string ModifiedBy
        {
            get { return _attendance.ModifiedBy; }
            set { _attendance.ModifiedBy = value; }
        }

        [Display(Name = "Modified Date")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime ModifiedDate
        {
            get { return _attendance.ModifiedDate; }
            set { _attendance.ModifiedDate = value; }
        }

        [Display(Name = "Is Deleted")]
        public bool IsDeleted
        {
            get { return _attendance.IsDeleted; }
            set { _attendance.IsDeleted = value; }
        }

        public Attendance Attendance
        {
            get { return _attendance; }
            set { _attendance = value; }
        }

        #endregion

        #region Constructors

        public AttendanceModel()
        {
            _attendance = new Attendance();
        }

        public AttendanceModel(Attendance attendance)
        {
            _attendance = attendance;
        }

        #endregion
    }
}