using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using ContactManager.BL;

namespace Interns_mvc.Models
{
    public class ActivityModel
    {
        private Activity _activity;

        [Display(Name ="Activity ID")]
        public int ActivityId
        {
            get { return _activity.Activityid; }
            set{ _activity.Activityid = value;}
        }

        [Display(Name = "User Name")]
        public string Username
        {
            get { return _activity.Username; }
            set { _activity.Username = value; }
        }
        [Display(Name = "Activity On")]
        public string Activityon
        {
            get { return _activity.Activityon; }
            set { _activity.Activityon = value; }
        }
        [Display(Name="Activity Item")]
        [Required]
        [DisplayFormat(ConvertEmptyStringToNull =false)]
        public string ActivityItem
        {
            get { return _activity.Activityitem; }
            set { _activity.Activityitem = value; }
        }
        [Display(Name = "Activity Date")]
        [Required]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString ="{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime? Activitydate
        {
            get { return _activity.Activitydate; }
            set { _activity.Activitydate = value; }
        }

        [Display(Name ="Is success")]
        [Required]
        public bool Issuccess
        {
            get { return _activity.Issuccess; }
            set { _activity.Issuccess = value; }
        }

        [Display(Name = "Activity Text")]
        [Required]
        [DisplayFormat(ConvertEmptyStringToNull = false)]
        public string Activitytext
        {
            get { return _activity.Activitytext; }
            set { _activity.Activitytext = value; }
        }

        public Activity Activity
        {
            get { return _activity; }
            set { _activity = value; }
        }

        public ActivityModel()
        {

        }
        public ActivityModel(Activity ac)
        {
            _activity = ac;
        }

    }
}