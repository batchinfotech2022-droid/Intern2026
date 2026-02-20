using Internsapp.BL;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Internsapp.UI.Models
{
    public class AttendanceModel
    {
        private Attendance _attendance;

        public int Id
        {
            get { return _attendance.Id; }
            set { _attendance.Id = value; }
        }

        public int InternId
        {
            get { return _attendance.InternId; }
            set { _attendance.InternId = value; }
        }

        [Required]
        [DataType(DataType.Date)]
        public DateTime AttendanceDate
        {
            get { return _attendance.AttendanceDate; }
            set { _attendance.AttendanceDate = value; }
        }

        public bool Status
        {
            get { return _attendance.Status; }
            set { _attendance.Status = value; }
        }

        public Attendance Attendance
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