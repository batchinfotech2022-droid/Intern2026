using System.Collections.Generic;
using System.Web.Mvc;

namespace Intern_MVC.ViewModels
{
    public class EmployeeViewModel
    {
        public string Name { get; set; }

        public string SelectedLanguage { get; set; }

        public List<SelectListItem> LanguageList { get; set; }

        // Simple function
        public string FetchLanguage()
        {
            return SelectedLanguage;
        }
    }
}
