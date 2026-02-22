using System;
using System.Data;
using System.Data.SqlClient;

namespace BiSchool.DL
{
    public class BatchData
    {
        public static int Create(string title, string timing, string subject,
            string createdBy, DateTime createdDate,
            string modifiedBy, DateTime modifiedDate, bool isDeleted)
        {
            int returnValue;

            using (SqlCommand cmd = new SqlCommand("Batch_Create"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(new SqlParameter("@Id", SqlDbType.Int));
                cmd.Parameters["@Id"].Direction = ParameterDirection.Output;

                cmd.Parameters.AddWithValue("@Title", title);
                cmd.Parameters.AddWithValue("@Timing", timing);
                cmd.Parameters.AddWithValue("@Subject", subject);
                cmd.Parameters.AddWithValue("@CreatedBy", createdBy);
                cmd.Parameters.AddWithValue("@CreatedDate", createdDate);
                cmd.Parameters.AddWithValue("@ModifiedBy", modifiedBy);
                cmd.Parameters.AddWithValue("@ModifiedDate", modifiedDate);
                cmd.Parameters.AddWithValue("@IsDeleted", isDeleted);

                returnValue = DataAccess.RunCmdOutput_int(cmd);

                cmd.Connection.Close();
                cmd.Connection.Dispose();
                cmd.Dispose();

                return returnValue;
            }
        }

        public static DataTable RetrieveAll()
        {
            using (SqlCommand cmd = new SqlCommand("Batch_ReadAll"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                DataSet ds = DataAccess.RunCMDGetDataSet(cmd);
                return ds.Tables[0];
            }
        }

        public static DataTable RetrieveById(int id)
        {
            using (SqlCommand cmd = new SqlCommand("Batch_ReadById"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);
                DataSet ds = DataAccess.RunCMDGetDataSet(cmd);
                return ds.Tables[0];
            }
        }

        public static bool Update(int id, string title, string timing, string subject,
            string createdBy, DateTime createdDate,
            string modifiedBy, DateTime modifiedDate, bool isDeleted)
        {
            bool result = false;

            using (SqlCommand cmd = new SqlCommand("Batch_Update"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@Title", title);
                cmd.Parameters.AddWithValue("@Timing", timing);
                cmd.Parameters.AddWithValue("@Subject", subject);
                cmd.Parameters.AddWithValue("@CreatedBy", createdBy);
                cmd.Parameters.AddWithValue("@CreatedDate", createdDate);
                cmd.Parameters.AddWithValue("@ModifiedBy", modifiedBy);
                cmd.Parameters.AddWithValue("@ModifiedDate", modifiedDate);
                cmd.Parameters.AddWithValue("@IsDeleted", isDeleted);

                cmd.Parameters.Add("@rowsAffected", SqlDbType.Int);
                cmd.Parameters["@rowsAffected"].Direction = ParameterDirection.ReturnValue;

                SqlDataReader r = DataAccess.RunCMDGetDataReader(cmd);

                if (cmd.Parameters["@rowsAffected"].Value.ToString() == "1")
                    result = true;

                r.Close();
                cmd.Connection.Close();
                cmd.Connection.Dispose();
                cmd.Dispose();
            }

            return result;
        }

        public static bool Delete(int id, string modifiedBy, DateTime modifiedDate)
        {
            bool result = false;

            using (SqlCommand cmd = new SqlCommand("Batch_Delete"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@ModifiedBy", modifiedBy);
                cmd.Parameters.AddWithValue("@ModifiedDate", modifiedDate);

                cmd.Parameters.Add("@rowsAffected", SqlDbType.Int);
                cmd.Parameters["@rowsAffected"].Direction = ParameterDirection.ReturnValue;

                SqlDataReader r = DataAccess.RunCMDGetDataReader(cmd);

                if (cmd.Parameters["@rowsAffected"].Value.ToString() == "1")
                    result = true;

                r.Close();
                cmd.Connection.Close();
                cmd.Connection.Dispose();
                cmd.Dispose();
            }

            return result;
        }
    }
}