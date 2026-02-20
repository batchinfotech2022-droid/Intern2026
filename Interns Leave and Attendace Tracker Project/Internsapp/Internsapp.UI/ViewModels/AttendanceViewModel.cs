using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Internsapp.UI.ViewModels
{
    public class AttendanceViewModel
    {
        public int InternId { get; set; }

        [Required]
        [DataType(DataType.Date)]
        public DateTime AttendanceDate { get; set; }

        [Required]
        public bool Status { get; set; }
    }
}