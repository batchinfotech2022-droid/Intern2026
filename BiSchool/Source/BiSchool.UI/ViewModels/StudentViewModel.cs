using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BiSchool.UI.ViewModels
{
    public class StudentViewModel
    {
        public List<Models.StudentModel> Students { get; set; }
            = new List<Models.StudentModel>();

        public PaginationPartialViewModel _PaginationPartialViewModel { get; set; }
          


        public StudentViewModel() 
        {
            _PaginationPartialViewModel = new PaginationPartialViewModel();
        }
    }
}
