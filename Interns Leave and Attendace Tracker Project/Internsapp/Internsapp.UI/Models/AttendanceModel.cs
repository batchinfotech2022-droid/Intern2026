using System;
using System.ComponentModel.DataAnnotations;
using Internsapp.BL;

namespace Internsapp.UI.Models
{
    public class AttendanceModel
    {
        private Attendance _attendance;

        [Display(Name = "Attendance ID")]
        public int Id { get { return _attendance.Id; } set { _attendance.Id = value; } }

        [Required]
        [Display(Name = "Intern ID")]
        public int InternId { get { return _attendance.InternId; } set { _attendance.InternId = value; } }

        [Required]
        [Display(Name = "Attendance Date")]
        public DateTime AttendanceDate
        {
            get { return _attendance.AttendanceDate; }
            set { _attendance.AttendanceDate = value; }
        }

        [Required]
        [Display(Name = "Status")]
        public bool Status { get { return _attendance.Status; } set { _attendance.Status = value; } }

        public string CreatedBy { get { return _attendance.CreatedBy; } set { _attendance.CreatedBy = value; } }

        public DateTime CreatedDate { get { return _attendance.CreatedDate; } set { _attendance.CreatedDate = value; } }

        public string ModifiedBy { get { return _attendance.ModifiedBy; } set { _attendance.ModifiedBy = value; } }

        public DateTime ModifiedDate { get { return _attendance.ModifiedDate; } set { _attendance.ModifiedDate = value; } }

        public bool IsDeleted { get { return _attendance.IsDeleted; } set { _attendance.IsDeleted = value; } }

        public Attendance attendance
        {
            get { return _attendance; }
            set { _attendance = value; }
        }

        public AttendanceModel()
        {
            _attendance = new Attendance();
        }

        public AttendanceModel(Attendance attendance)
        {
            _attendance = attendance;
        }
    }
}