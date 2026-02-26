using System.ComponentModel.DataAnnotations;

namespace Internsapp.UI.ViewModels
{
    public class LoginViewModel
    {
        [Required, StringLength(50)]
        [Display(Name = "Username")]
        public string UserName { get; set; }

        [Required, DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string Password { get; set; }
    

public LoginViewModel()
        {
            UserName = string.Empty;
            Password = string.Empty;
        }

        public LoginViewModel(string userName, string password)
        {
            UserName = userName;
            Password = password;
        }
    }
}