using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InternLAApp.UI.Models
{
    public class InternsModel
    {
        private int _internId;
        private string _fullName;
        private DateTime _dateOfJoining;
        private int _availableBalance;
                       
        public int InternId
        {
            get { return _internId; }
            set { _internId = value; }
        }

        public string FullName
        {
            get { return _fullName; }
            set { _fullName = value; }
        }

        public DateTime DateOfJoining
        {
            get { return _dateOfJoining; }
            set { _dateOfJoining = value; }
        }

        public int AvailableBalance
        {
            get { return _availableBalance; }
            set { _availableBalance = value; }
        }

        public InternsModel()
        {
        }


        public InternsModel(int internId, string fullName, DateTime dateOfJoining, int availableBalance)
        {
            _internId = internId;
            _fullName = fullName;
            _dateOfJoining = dateOfJoining;
            _availableBalance = availableBalance;
        }

    }
}