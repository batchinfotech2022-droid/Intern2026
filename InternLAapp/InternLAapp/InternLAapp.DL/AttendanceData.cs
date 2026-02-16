
using InternLAapp.DL;
using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;

namespace InternLAapp.DAL
{
    public class AttendanceData
    {
        // CREATE
        public static int Create(int internId, DateTime attendanceDate, bool isPresent,
                                 string createdBy, DateTime createdDate,
                                 string modifiedBy, DateTime modifiedDate, bool isDeleted)
        {
            int newId = 0;

            using (SqlCommand cmd = new SqlCommand("Attendance_Create"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@InternId", internId);
                cmd.Parameters.AddWithValue("@AttendanceDate", attendanceDate);
                cmd.Parameters.AddWithValue("@IsPresent", isPresent);
                cmd.Parameters.AddWithValue("@CreatedBy", createdBy);
                cmd.Parameters.AddWithValue("@CreatedDate", createdDate);
                cmd.Parameters.AddWithValue("@ModifiedBy", modifiedBy);
                cmd.Parameters.AddWithValue("@ModifiedDate", modifiedDate);
                cmd.Parameters.AddWithValue("@IsDeleted", isDeleted);

                SqlParameter idParam = new SqlParameter("@Id", SqlDbType.Int)
                {
                    Direction = ParameterDirection.Output
                };
                cmd.Parameters.Add(idParam);

                DataAccess.RunCmdOutput_int(cmd);
                newId = Convert.ToInt32(cmd.Parameters["@Id"].Value);

                cmd.Connection.Close();
                cmd.Connection.Dispose();
            }

            return newId;
        }

        // RETRIEVE ALL
        public static DataTable RetrieveAll()
        {
            using (SqlCommand cmd = new SqlCommand("Attendance_ReadAll"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                DataTable dt = DataAccess.RunCMDGetDataSet(cmd).Tables[0];
                cmd.Connection.Close();
                cmd.Connection.Dispose();
                return dt;
            }
        }

        // RETRIEVE BY ID
        public static DataTable RetrieveById(int id)
        {
            using (SqlCommand cmd = new SqlCommand("Attendance_ReadById"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);
                DataTable dt = DataAccess.RunCMDGetDataSet(cmd).Tables[0];
                cmd.Connection.Close();
                cmd.Connection.Dispose();
                return dt;
            }
        }

        // UPDATE
        public static bool Update(int id, int internId, DateTime attendanceDate, bool isPresent,
                                  string createdBy, DateTime createdDate,
                                  string modifiedBy, DateTime modifiedDate, bool isDeleted)
        {
            using (SqlCommand cmd = new SqlCommand("Attendance_Update"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@InternId", internId);
                cmd.Parameters.AddWithValue("@AttendanceDate", attendanceDate);
                cmd.Parameters.AddWithValue("@IsPresent", isPresent);
                cmd.Parameters.AddWithValue("@CreatedBy", createdBy);
                cmd.Parameters.AddWithValue("@CreatedDate", createdDate);
                cmd.Parameters.AddWithValue("@ModifiedBy", modifiedBy);
                cmd.Parameters.AddWithValue("@ModifiedDate", modifiedDate);
                cmd.Parameters.AddWithValue("@IsDeleted", isDeleted);

                cmd.Parameters.Add("@rowsAffected", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
                DataAccess.RunCMDGetDataReader(cmd);

                bool result = cmd.Parameters["@rowsAffected"].Value.ToString() == "1";

                cmd.Connection.Close();
                cmd.Connection.Dispose();

                return result;
            }
        }

        // DELETE
        public static bool Delete(int id)
        {
            using (SqlCommand cmd = new SqlCommand("Attendance_Delete"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);

                cmd.Parameters.Add("@rowsAffected", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
                DataAccess.RunCMDGetDataReader(cmd);

                bool result = cmd.Parameters["@rowsAffected"].Value.ToString() == "1";

                cmd.Connection.Close();
                cmd.Connection.Dispose();

                return result;
            }
        }
    }
}