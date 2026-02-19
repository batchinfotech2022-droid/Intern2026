using System;
using System.Collections.Generic;
using System.Data;
using InternLAApp.DL;

namespace InternLAApp.BL
{
    public class Attendance
    {
        #region Properties
        public int Id { get; set; }
        public int InternId { get; set; }
        public DateTime AttendanceDate { get; set; }
        public string Status { get; set; }   
        public string CreatedBy { get; set; }
        public DateTime CreatedDate { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime ModifiedDate { get; set; }
        public bool IsDeleted { get; set; }
        #endregion

        #region CREATE
        public static int Create(string usrName, int internId, DateTime attendanceDate, string status)
        {
            return AttendanceData.Create(
                internId,
                attendanceDate,
                status,
                usrName,
                DateTime.Now,
                usrName,
                DateTime.Now,
                false
            );
        }
        #endregion

        #region RETRIEVE ALL
        public static List<Attendance> RetrieveAll()
        {
            List<Attendance> list = new List<Attendance>();
            DataTable dt = AttendanceData.RetrieveAll();

            foreach (DataRow row in dt.Rows)
            {
                list.Add(new Attendance
                {
                    Id = Convert.ToInt32(row["Id"]),
                    InternId = Convert.ToInt32(row["InternId"]),
                    AttendanceDate = Convert.ToDateTime(row["AttendanceDate"]),
                    Status = row["Status"].ToString(),   
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

        #region RETRIEVE BY ID
        public static Attendance RetrieveById(int id)
        {
            DataTable dt = AttendanceData.RetrieveById(id);
            if (dt.Rows.Count == 0) return null;

            DataRow row = dt.Rows[0];

            return new Attendance
            {
                Id = Convert.ToInt32(row["Id"]),
                InternId = Convert.ToInt32(row["InternId"]),
                AttendanceDate = Convert.ToDateTime(row["AttendanceDate"]),
                Status = row["Status"].ToString(),   
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
            return AttendanceData.Update(
                Id,
                InternId,
                AttendanceDate,
                Status,  
                CreatedBy,
                CreatedDate,
                ModifiedBy,
                ModifiedDate,
                IsDeleted
            );
        }
        #endregion

        #region DELETE
        public bool Delete()
        {
            return AttendanceData.Delete(Id);
        }
        #endregion
    }
}