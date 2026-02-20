using Internsapp.UI.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Internsapp.UI.ViewModels
{
  
        public class LeaveViewModel
        {
            [Required]
            public int InternId { get; set; }

            [Required]
            [DataType(DataType.Date)]
            public DateTime FromDate { get; set; }

            [Required]
            [DataType(DataType.Date)]
            public DateTime ToDate { get; set; }

            public string Reason { get; set; }
        }
    }
