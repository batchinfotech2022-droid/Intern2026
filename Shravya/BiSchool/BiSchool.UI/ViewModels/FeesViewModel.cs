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

        public int Id {  get; set; }

        [Required(ErrorMessage = "Please select a StudentId")]
        [Display(Name = "Student ID")]
        public int StudentId { get; set; }

        public string StudentName { get; set; }


        [Required]
        public decimal Amount { get; set; }

        [Required]
        [Display(Name = "Payment Date")]
        public DateTime Date { get; set; }

       
    }
}