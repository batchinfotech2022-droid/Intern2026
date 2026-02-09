using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Interns_MVC.Models
{
    public class Attendance
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Day { get; set; }
        public string Status { get; set; }
        public bool IsPresent {  get; set; }
    }
}
