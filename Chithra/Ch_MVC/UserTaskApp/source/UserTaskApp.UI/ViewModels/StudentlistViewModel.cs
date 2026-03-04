using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using UserTaskApp.UI.Models;


namespace UserTaskApp.UI.ViewModels
{
    public class StudentlistViewModel
    {

        public List<UserModel> Users { get; set; }
        public PaginationPartialViewModel _paginationPartialViewModel;

        public StudentlistViewModel()
        {
            Users = new List<UserModel>();
            _paginationPartialViewModel = new PaginationPartialViewModel();
        }

    }
}