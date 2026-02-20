using Internsapp.BL;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Runtime.Remoting.Lifetime;
using System.Web;

namespace Internsapp.UI.Models
{
    public class LeaveModel
    {
        private Leave _leave;

        public int Id
        {
            get { return _leave.Id; }
            set { _leave.Id = value; }
        }

        [Required]
        public int InternId
        {
            get { return _leave.InternId; }
            set { _leave.InternId = value; }
        }

        [Required]
        [DataType(DataType.Date)]
        public DateTime FromDate
        {
            get { return _leave.FromDate; }
            set { _leave.FromDate = value; }
        }

        [Required]
        [DataType(DataType.Date)]
        public DateTime ToDate
        {
            get { return _leave.ToDate; }
            set { _leave.ToDate = value; }
        }

        public string Reason
        {
            get { return _leave.Reason; }
            set { _leave.Reason = value; }
        }

        public Leave Leave
        {
            get { return _leave; }
            set { _leave = value; }
        }

        public LeaveModel()
        {
            _leave = new Leave();
        }

        public LeaveModel(Leave leave)
        {
            _leave = leave;
        }
    }
}