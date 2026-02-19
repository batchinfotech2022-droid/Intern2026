using System;
using System.Collections.Generic;
using System.Data;
using InternLAApp.DL;

namespace InternLAApp.BL
{
    public class Leave
    {
        #region Properties
        public int Id { get; set; }
        public int InternId { get; set; }
        public DateTime FromDate { get; set; }
        public DateTime ToDate { get; set; }
        public string Reason { get; set; }
        public string CreatedBy { get; set; }
        public DateTime CreatedDate { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime ModifiedDate { get; set; }
        public bool IsDeleted { get; set; }
        #endregion

        #region CREATE
        public static int Create(string usrName, int internId, DateTime fromDate, DateTime toDate, string reason)
        {
            string createdBy = usrName;
            DateTime createdDate = DateTime.Now;
            string modifiedBy = usrName;
            DateTime modifiedDate = DateTime.Now;
            bool isDeleted = false;

            return LeaveData.Create(internId, fromDate, toDate, reason,
                                    createdBy, createdDate, modifiedBy, modifiedDate, isDeleted);
        }
        #endregion

        #region READ ALL
        public static List<Leave> RetrieveAll()
        {
            List<Leave> list = new List<Leave>();
            DataTable dt = LeaveData.RetrieveAll();

            foreach (DataRow row in dt.Rows)
            {
                list.Add(new Leave
                {
                    Id = Convert.ToInt32(row["Id"]),
                    InternId = Convert.ToInt32(row["InternId"]),
                    FromDate = Convert.ToDateTime(row["FromDate"]),
                    ToDate = Convert.ToDateTime(row["ToDate"]),
                    Reason = row["Reason"].ToString(),
                    CreatedBy = row["CreatedBy"].ToString(),
                    CreatedDate = Convert.ToDateTime(row["CreatedDate"]),
                    ModifiedBy = row["ModifiedBy"].ToString(),
                    ModifiedDate = Convert.ToDateTime(row["ModifiedDate"]),
                    IsDeleted = Convert.ToBoolean(row["IsDeleted"])
                });
            }

            return list;
        }
        #endregion

        #region READ BY ID
        public static Leave RetrieveById(int id)
        {
            DataTable dt = LeaveData.RetrieveById(id);

            if (dt.Rows.Count == 0)
                return null;

            DataRow row = dt.Rows[0];

            return new Leave
            {
                Id = Convert.ToInt32(row["Id"]),
                InternId = Convert.ToInt32(row["InternId"]),
                FromDate = Convert.ToDateTime(row["FromDate"]),
                ToDate = Convert.ToDateTime(row["ToDate"]),
                Reason = row["Reason"].ToString(),
                CreatedBy = row["CreatedBy"].ToString(),
                CreatedDate = Convert.ToDateTime(row["CreatedDate"]),
                ModifiedBy = row["ModifiedBy"].ToString(),
                ModifiedDate = Convert.ToDateTime(row["ModifiedDate"]),
                IsDeleted = Convert.ToBoolean(row["IsDeleted"])
            };
        }
        #endregion

        #region UPDATE
        public bool Update()
        {
            return LeaveData.Update(Id, InternId, FromDate, ToDate, Reason,
                                    CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted);
        }
        #endregion

        #region DELETE
        public bool Delete()
        {
            return LeaveData.Delete(Id);
        }
        #endregion
    }
}