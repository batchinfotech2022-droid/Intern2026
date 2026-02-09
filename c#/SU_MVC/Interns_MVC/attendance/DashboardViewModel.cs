using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Interns_MVC.Models;
namespace Interns_MVC.ViewModels
{
    public class DashboardViewModel
    {

        private List<Attendance> _attendanceList;
        private string _day;
        private List<SelectListItem> _dayList;
        public int TotalAttendance { get; set; }
        public int TotalAbsent { get; set; }
        public int TotalPreset { get; set; }



        public List<Attendance> AttendanceList
        {
            get { return _attendanceList; }
            set { _attendanceList = value; }
        }



        public string Day
        {
            get { return _day; }
            set { _day = value; }
        }

        public List<SelectListItem> DayList
        {
            get { return _dayList; }
            set { _dayList = value; }
        }



        public DashboardViewModel()
        {
            _attendanceList = new List<Attendance>();
            _dayList = new List<SelectListItem>();
            _day = "All";

        }
        public DashboardViewModel(List<Attendance> attendanceList, List<SelectListItem> dayList)
        {
            _attendanceList = attendanceList;
            _dayList = dayList;
            TotalAttendance = getTotal(attendanceList);
            TotalAbsent =getTotalAbset(attendanceList);
            TotalPreset = getTotalPreset(attendanceList);

        }

        public int getTotal(List<Attendance> attendanceList) 
        {
            int result = 0;
            result = attendanceList.Count;
            return result;
        }

        public int getTotalPreset(List<Attendance> attendanceList)
        {
            int result = 0;
           result= attendanceList.Where(x => x.IsPresent).ToList().Count();
            return result;
        }

        public int getTotalAbset(List<Attendance> attendanceList)
        {
            int result = 0;
            result=attendanceList.Where(x => !x.IsPresent).ToList().Count();
            
            return result;
        }

    }


}