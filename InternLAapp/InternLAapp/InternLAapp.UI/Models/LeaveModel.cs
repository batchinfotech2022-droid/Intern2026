using System;
using System.ComponentModel.DataAnnotations;
using InternLAapp.BL; 

namespace InternLAapp.UI.Models
{
    public class LeaveModel
    {
        private Leave _leave;

        #region Properties

        [Display(Name = "Leave ID")]
        public int Id
        {
            get { return _leave.Id; }
            set { _leave.Id = value; }
        }

        [Display(Name = "Intern ID")]
        [Required(ErrorMessage = "Intern ID is required")]
        public int InternId
        {
            get { return _leave.InternId; }
            set { _leave.InternId = value; }
        }

        [Display(Name = "From Date")]
        [Required(ErrorMessage = "From Date is required")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime FromDate
        {
            get { return _leave.FromDate; }
            set { _leave.FromDate = value; }
        }

        [Display(Name = "To Date")]
        [Required(ErrorMessage = "To Date is required")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime ToDate
        {
            get { return _leave.ToDate; }
            set { _leave.ToDate = value; }
        }

        [Display(Name = "Reason")]
        [Required(ErrorMessage = "Reason is required")]
        [StringLength(200)]
        public string Reason
        {
            get { return _leave.Reason; }
            set { _leave.Reason = value; }
        }

        [Display(Name = "Created By")]
        public string CreatedBy
        {
            get { return _leave.CreatedBy; }
            set { _leave.CreatedBy = value; }
        }

        [Display(Name = "Created Date")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime CreatedDate
        {
            get { return _leave.CreatedDate; }
            set { _leave.CreatedDate = value; }
        }

        [Display(Name = "Modified By")]
        public string ModifiedBy
        {
            get { return _leave.ModifiedBy; }
            set { _leave.ModifiedBy = value; }
        }

        [Display(Name = "Modified Date")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime ModifiedDate
        {
            get { return _leave.ModifiedDate; }
            set { _leave.ModifiedDate = value; }
        }

        [Display(Name = "Is Deleted")]
        public bool IsDeleted
        {
            get { return _leave.IsDeleted; }
            set { _leave.IsDeleted = value; }
        }

        public Leave Leave
        {
            get { return _leave; }
            set { _leave = value; }
        }

        #endregion

        #region Constructors

        public LeaveModel()
        {
            _leave = new Leave();
        }

        public LeaveModel(Leave leave)
        {
            _leave = leave;
        }

        #endregion

        #region BL Methods

        public void Create(string userName)
        {
            Leave.Create(userName, InternId, FromDate, ToDate, Reason);
        }

        public void Update(string userName)
        {
            _leave.Update(userName);
        }

        public static LeaveModel RetrieveById(int id)
        {
            var leave = Leave.RetrieveById("System", id);
            return new LeaveModel(leave);
        }

        public static System.Collections.Generic.List<LeaveModel> RetrieveAll()
        {
            var list = new System.Collections.Generic.List<LeaveModel>();
            foreach (var leave in Leave.RetrieveAll("System"))
            {
                list.Add(new LeaveModel(leave));
            }
            return list;
        }

        public static void Delete(int id)
        {
            Leave.Delete("System", id);
        }

        #endregion
    }
}