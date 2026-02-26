using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Internsapp.DL
{
    public class AttendanceData
    {
        public static int Create(int InternId, DateTime AttendanceDate, string Status,
                                 string CreatedBy, DateTime CreatedDate, string ModifiedBy, DateTime ModifiedDate, bool IsDeleted)
        {
            using (SqlCommand cmd = new SqlCommand("Attendance_Create"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@InternId", InternId);
                cmd.Parameters.AddWithValue("@AttendanceDate", AttendanceDate);
                cmd.Parameters.AddWithValue("@Status", Status);
                cmd.Parameters.AddWithValue("@CreatedBy", CreatedBy);
                cmd.Parameters.AddWithValue("@CreatedDate", CreatedDate);
                cmd.Parameters.AddWithValue("@ModifiedBy", ModifiedBy);
                cmd.Parameters.AddWithValue("@ModifiedDate", ModifiedDate);
                cmd.Parameters.AddWithValue("@IsDeleted", IsDeleted);

                SqlParameter outParam = new SqlParameter("@Id", SqlDbType.Int);
                outParam.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(outParam);

                return DataAccess.RunCmdOutput_int(cmd);
            }
        }

        public static DataTable RetrieveAll()
        {
            using (SqlCommand cmd = new SqlCommand("Attendance_ReadAll"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                return DataAccess.RunCMDGetDataSet(cmd).Tables[0];
            }
        }

        public static DataTable RetrieveById(int Id)
        {
            using (SqlCommand cmd = new SqlCommand("Attendance_ReadByID"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", Id);
                return DataAccess.RunCMDGetDataSet(cmd).Tables[0];
            }
        }

        public static bool Update(int Id, int InternId, DateTime AttendanceDate, string Status,
                                  string ModifiedBy, DateTime ModifiedDate, bool IsDeleted)
        {
            using (SqlCommand cmd = new SqlCommand("Attendance_Update"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Id", Id);
                cmd.Parameters.AddWithValue("@InternId", InternId);
                cmd.Parameters.AddWithValue("@AttendanceDate", AttendanceDate);
                cmd.Parameters.AddWithValue("@Status", Status);
                cmd.Parameters.AddWithValue("@ModifiedBy", ModifiedBy);
                cmd.Parameters.AddWithValue("@ModifiedDate", ModifiedDate);
                cmd.Parameters.AddWithValue("@IsDeleted", IsDeleted);

                cmd.Parameters.Add("@rowsAffected", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;

                DataAccess.RunCMDGetDataReader(cmd);

                return cmd.Parameters["@rowsAffected"].Value.ToString() == "1";
            }
        }

        public static bool Delete(int Id, string usrName, DateTime ModifiedDate)
        {
            using (SqlCommand cmd = new SqlCommand("Attendance_Delete"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Id", Id);
                cmd.Parameters.AddWithValue("@ModifiedBy", usrName);
                cmd.Parameters.AddWithValue("@ModifiedDate", ModifiedDate);

                cmd.Parameters.Add("@rowsAffected", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;

                DataAccess.RunCMDGetDataReader(cmd);

                return cmd.Parameters["@rowsAffected"].Value.ToString() == "1";
            }
        }
    }
}