using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SmartCMApp.UI.Models
{
    public class HomeModel
    {
            public int TotalContacts { get; set; }
            public int TotalCategories { get; set; }
            public int ActiveContacts { get; set; }

            public List<ContactModel> RecentContacts { get; set; }
        }
    }

