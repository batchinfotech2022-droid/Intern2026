
using System;
using System.Data;
using InternLAapp.DL;
using Microsoft.Data.SqlClient;

namespace InternLAapp.DAL
{
    public class LeaveData
    {
        public static int Create(int internId, DateTime fromDate, DateTime toDate, string reason, string createdBy, DateTime createdDate, string modifiedBy, DateTime modifiedDate, bool isDeleted)
        {
            int returnValue;
            using (SqlCommand cmd = new SqlCommand("Leave_Create"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@InternId", internId);
                cmd.Parameters.AddWithValue("@FromDate", fromDate);
                cmd.Parameters.AddWithValue("@ToDate", toDate);
                cmd.Parameters.AddWithValue("@Reason", reason);
                cmd.Parameters.AddWithValue("@CreatedBy", createdBy);
                cmd.Parameters.AddWithValue("@CreatedDate", createdDate);
                cmd.Parameters.AddWithValue("@ModifiedBy", modifiedBy);
                cmd.Parameters.AddWithValue("@ModifiedDate", modifiedDate);
                cmd.Parameters.AddWithValue("@IsDeleted", isDeleted);

                cmd.Parameters.Add("@Id", SqlDbType.Int).Direction = ParameterDirection.Output;

                returnValue = DataAccess.RunCmdOutput_int(cmd);

                cmd.Connection.Close();
                cmd.Connection.Dispose();
                cmd.Dispose();
            }

            return returnValue;
        }

        public static DataTable RetrieveAll()
        {
            using (SqlCommand cmd = new SqlCommand("Leave_ReadAll"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                DataSet ds = DataAccess.RunCMDGetDataSet(cmd);
                return ds.Tables[0];
            }
        }

        public static bool Update(int id, int internId, DateTime fromDate, DateTime toDate, string reason, string createdBy, DateTime createdDate, string modifiedBy, DateTime modifiedDate, bool isDeleted)
        {
            using (SqlCommand cmd = new SqlCommand("Leave_Update"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@InternId", internId);
                cmd.Parameters.AddWithValue("@FromDate", fromDate);
                cmd.Parameters.AddWithValue("@ToDate", toDate);
                cmd.Parameters.AddWithValue("@Reason", reason);
                cmd.Parameters.AddWithValue("@CreatedBy", createdBy);
                cmd.Parameters.AddWithValue("@CreatedDate", createdDate);
                cmd.Parameters.AddWithValue("@ModifiedBy", modifiedBy);
                cmd.Parameters.AddWithValue("@ModifiedDate", modifiedDate);
                cmd.Parameters.AddWithValue("@IsDeleted", isDeleted);

                cmd.Parameters.Add("@rowsAffected", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;

                SqlDataReader r = DataAccess.RunCMDGetDataReader(cmd);
                bool result = cmd.Parameters["@rowsAffected"].Value.ToString() == "1";
                r.Close();
                return result;
            }
        }

        public static bool Delete(int id)
        {
            using (SqlCommand cmd = new SqlCommand("Leave_Delete"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.Add("@rowsAffected", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;

                SqlDataReader r = DataAccess.RunCMDGetDataReader(cmd);
                bool result = cmd.Parameters["@rowsAffected"].Value.ToString() == "1";
                r.Close();
                return result;
            }
        }
    }
}