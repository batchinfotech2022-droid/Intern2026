using System;
using System.Linq;
using System.Web;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using InternLAapp.BL;

namespace InternLAapp.UI.Models
{
    public class AttendanceModel
    {
        private Attendance _attendance;

       

        [Display(Name = "Attendance ID")]
        public int Id
        {
            get { return _attendance.Id; }
            set { _attendance.Id = value; }
        }

        [Display(Name = "Intern ID")]
        [Required(ErrorMessage = "Intern ID is required")]
        public int InternId
        {
            get { return _attendance.InternId; }
            set { _attendance.InternId = value; }
        }

        [Display(Name = "Attendance Date")]
        [Required(ErrorMessage = "Attendance Date is required")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime AttendanceDate
        {
            get { return _attendance.AttendanceDate; }
            set { _attendance.AttendanceDate = value; }
        }

        [Display(Name = "Status")]
        [Required(ErrorMessage = "Status is required")]
        [StringLength(50)]
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

        #region BL Methods

        public void Create(string userName)
        {
            Attendance.Create(userName, InternId, AttendanceDate, Status);
        }

        public void Update(string userName)
        {
            _attendance.Update(userName);
        }

        public static List<AttendanceModel> RetrieveAll()
        {
            List<AttendanceModel> list = new List<AttendanceModel>();
            foreach (var att in Attendance.RetrieveAll("System"))
            {
                list.Add(new AttendanceModel(att));
            }
            return list;
        }

        public static AttendanceModel RetrieveById(int id)
        {
            var att = Attendance.RetrieveById("System", id);
            return new AttendanceModel(att);
        }

        public static void Delete(int id)
        {
            Attendance.Delete("System", id);
        }

      
    }
}