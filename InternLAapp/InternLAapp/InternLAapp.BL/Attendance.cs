using InternLAapp.DAL;
using InternLAapp.DL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;

namespace InternLAapp.ORM
{
    public class Attendance
    {
        #region Properties
        public int Id { get; set; }
        public int InternId { get; set; }
        public DateTime AttendanceDate { get; set; }
        public bool IsPresent { get; set; }
        public string CreatedBy { get; set; }
        public DateTime CreatedDate { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime ModifiedDate { get; set; }
        public bool IsDeleted { get; set; }
        #endregion

        #region CRUD Methods

        // CREATE
        public static int Create(string usrName, int internId, DateTime attendanceDate, bool isPresent)
        {
            string createdBy = usrName;
            DateTime createdDate = DateTime.Now;
            string modifiedBy = usrName;
            DateTime modifiedDate = DateTime.Now;
            bool isDeleted = false;

            try
            {
                int id = AttendanceData.Create(internId, attendanceDate, isPresent,
                                               createdBy, createdDate, modifiedBy, modifiedDate, isDeleted);
                return id;
            }
            catch (Exception ex)
            {
                throw new Exception("Attendance creation failed.", ex);
            }
        }

        // RETRIEVE ALL
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
                    IsPresent = Convert.ToBoolean(row["IsPresent"]),
                    CreatedBy = row["CreatedBy"].ToString(),
                    CreatedDate = Convert.ToDateTime(row["CreatedDate"]),
                    ModifiedBy = row["ModifiedBy"].ToString(),
                    ModifiedDate = Convert.ToDateTime(row["ModifiedDate"]),
                    IsDeleted = Convert.ToBoolean(row["IsDeleted"])
                });
            }
            return list;
        }

        // RETRIEVE BY ID
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
                IsPresent = Convert.ToBoolean(row["IsPresent"]),
                CreatedBy = row["CreatedBy"].ToString(),
                CreatedDate = Convert.ToDateTime(row["CreatedDate"]),
                ModifiedBy = row["ModifiedBy"].ToString(),
                ModifiedDate = Convert.ToDateTime(row["ModifiedDate"]),
                IsDeleted = Convert.ToBoolean(row["IsDeleted"])
            };
        }

        // UPDATE
        public bool Update()
        {
            return AttendanceData.Update(Id, InternId, AttendanceDate, IsPresent,
                                         CreatedBy, CreatedDate, ModifiedBy, ModifiedDate, IsDeleted);
        }

        // DELETE
        public bool Delete()
        {
            return AttendanceData.Delete(Id);
        }

        #endregion
    }
}