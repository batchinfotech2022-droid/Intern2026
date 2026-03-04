using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BiSchool.UI.Models;

namespace BiSchool.UI.ViewModels
{
    public class StudentListViewModel
    {
        public List<StudentModel> Students { get; set; } = new List<StudentModel>();

        public PaginationPartialViewModel _paginationPartialViewModel;

        public StudentListViewModel()
        {
            _paginationPartialViewModel = new PaginationPartialViewModel();
        }
    }
}