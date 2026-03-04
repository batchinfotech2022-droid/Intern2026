using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BiSchool.UI.ViewModels
{
    public class PaginationPartialViewModel
    {
        public int PageIndex { get; set; } = 0;
        public int IdValue { get; set; } = 0;
        public int PageCount { get; set; } = 0;
        public int TotalData { get; set; } = 0;
        public string ControllerName { get; set; } = "";
        public string ActionLink { get; set; } = string.Empty;
        public string sortOrder { get; set; } = String.Empty;
        public string search { get; set; } = String.Empty;
    }
}