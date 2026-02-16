using System;
using System.ComponentModel.DataAnnotations;
using InternLAapp.BL; 
namespace InternLAapp.UI.Models
{
    public class InternModel
    {
        private Intern _intern;

        #region Properties

        [Display(Name = "Intern ID")]
        public int Id
        {
            get { return _intern.Id; }
            set { _intern.Id = value; }
        }

        [Display(Name = "Full Name")]
        [Required(ErrorMessage = "Full Name is required")]
        [StringLength(100)]
        public string FullName
        {
            get { return _intern.FullName; }
            set { _intern.FullName = value; }
        }

        [Display(Name = "Date of Joining")]
        [Required(ErrorMessage = "Date of Joining is required")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime DateOfJoining
        {
            get { return _intern.DateOfJoining; }
            set { _intern.DateOfJoining = value; }
        }

        [Display(Name = "Available Leave")]
        [Required(ErrorMessage = "Available Leave is required")]
        [Range(0, 365, ErrorMessage = "Available Leave must be between 0 and 365")]
        public int AvailableLeave
        {
            get { return _intern.AvailableLeave; }
            set { _intern.AvailableLeave = value; }
        }

        [Display(Name = "Created By")]
        public string CreatedBy
        {
            get { return _intern.CreatedBy; }
            set { _intern.CreatedBy = value; }
        }

        [Display(Name = "Created Date")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime CreatedDate
        {
            get { return _intern.CreatedDate; }
            set { _intern.CreatedDate = value; }
        }

        [Display(Name = "Modified By")]
        public string ModifiedBy
        {
            get { return _intern.ModifiedBy; }
            set { _intern.ModifiedBy = value; }
        }

        [Display(Name = "Modified Date")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime ModifiedDate
        {
            get { return _intern.ModifiedDate; }
            set { _intern.ModifiedDate = value; }
        }

        [Display(Name = "Is Deleted")]
        public bool IsDeleted
        {
            get { return _intern.IsDeleted; }
            set { _intern.IsDeleted = value; }
        }

        public Intern Intern
        {
            get { return _intern; }
            set { _intern = value; }
        }

        #endregion

        #region Constructors

        public InternModel()
        {
            _intern = new Intern();
        }

        public InternModel(Intern intern)
        {
            _intern = intern;
        }

        #endregion

        #region BL Methods

        public void Create(string userName)
        {
            Intern.Create(userName, FullName, DateOfJoining, AvailableLeave);
        }

        public void Update(string userName)
        {
            _intern.Update(userName);
        }

        public static InternModel RetrieveById(int id)
        {
            var intern = Intern.RetrieveById("System", id);
            return new InternModel(intern);
        }

        public static System.Collections.Generic.List<InternModel> RetrieveAll()
        {
            var list = new System.Collections.Generic.List<InternModel>();
            foreach (var intern in Intern.RetrieveAll("System"))
            {
                list.Add(new InternModel(intern));
            }
            return list;
        }

        public static void Delete(int id)
        {
            Intern.Delete("System", id);
        }

        #endregion
    }
}