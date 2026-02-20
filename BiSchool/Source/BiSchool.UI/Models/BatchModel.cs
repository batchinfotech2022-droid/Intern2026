using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.EnterpriseServices;
using System.Linq;
using System.Web;
using BiSchool.BL;

namespace BiSchool.UI.Models
{
    public class BatchModel
    {
        private Batch _batch;

        [Display(Name = "Batch ID")]
        public int Id { get { return _batch.Id; } set { _batch.Id = value; } }

        [Display(Name = "Title")]
        [Required]
        [DisplayFormat(ConvertEmptyStringToNull = false)]
        public string Title { get { return _batch.Title; } set { _batch.Title = value; } }

        [Display(Name = "Timing")]
        [Required]
        [DisplayFormat(ConvertEmptyStringToNull = false)]
        public string Timing { get { return _batch.Timing; } set { _batch.Timing = value; } }

        [Display(Name = "Subject")]
        [Required]
        [DisplayFormat(ConvertEmptyStringToNull = false)]
        public string Subject { get { return _batch.Subject; } set { _batch.Subject = value; } }
        
        public string CreatedBy { get { return _batch.CreatedBy; } set { _batch.CreatedBy = value; } }
                    
        public DateTime CreatedDate { get { return _batch.CreatedDate; } set { _batch.CreatedDate = value; } }

        
        public string ModifiedBy { get { return _batch.ModifiedBy; } set { _batch.ModifiedBy = value; } }

       
        public DateTime ModifiedDate { get { return _batch.ModifiedDate; } set { _batch.ModifiedDate = value; } }

       
        public bool IsDeleted { get { return _batch.IsDeleted; } set { _batch.IsDeleted = value; } }
        public Batch batch { get { return _batch; } set { _batch = value; } }

        public BatchModel()
        {
            _batch = new Batch();

        }
        public BatchModel(Batch batch)
        {
            _batch = batch;
        }
    }
}