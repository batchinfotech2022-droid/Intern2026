using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;


namespace BiSchool.UI.ViewModels
{
    public class FeesViewModel
    {

        public int Id { get; set; }

        [Required(ErrorMessage = "Please select a Student")]
        [Display(Name = "Student")]
        public int StudentId { get; set; }

        public string StudentName { get; set; }

        [Required(ErrorMessage = "Please enter the Amount")]
        [Range(0.01, double.MaxValue, ErrorMessage = "Amount must be greater than 0")]
        [Display(Name = "Amount")]
        public decimal Amount { get; set; }

        [Required(ErrorMessage = "Please select a Payment Date")]
        [DataType(DataType.Date)]
        [Display(Name = "Payment Date")]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime Date { get; set; }

        // For dropdown
        public IEnumerable<SelectListItem> Students { get; set; }

    }
}