using System;
using System.Data;
using System.Data.SqlClient;

namespace BiSchool.DL
{
    public class StudentBatchData
    {
        public static int Create(
            int batchid,
            int studentid,
            string createdby,
            DateTime createddate,
            string modifiedby,
            DateTime modifieddate,
            bool isdeleted)
        {
            int returnValue;

            using (SqlCommand cmd = new SqlCommand("StudentBatch_Create"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@Id", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd.Parameters.AddWithValue("@BatchId", batchid);
                cmd.Parameters.AddWithValue("@StudentId", studentid);
                cmd.Parameters.AddWithValue("@CreatedBy", createdby);
                cmd.Parameters.AddWithValue("@CreatedDate", createddate);
                cmd.Parameters.AddWithValue("@ModifiedBy", modifiedby);
                cmd.Parameters.AddWithValue("@ModifiedDate", modifieddate);
                cmd.Parameters.AddWithValue("@IsDeleted", isdeleted);

                returnValue = DataAccess.RunCmdOutput_int(cmd);

                cmd.Connection.Close();
                cmd.Connection.Dispose();
                cmd.Dispose();

                return returnValue;
            }
        }

        public static DataTable RetrieveAll()
        {
            using (SqlCommand cmd = new SqlCommand("StudentBatch_ReadAll"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                DataSet ds = DataAccess.RunCMDGetDataSet(cmd);
                return ds.Tables[0];
            }
        }

        public static DataTable RetrieveById(int id)
        {
            using (SqlCommand cmd = new SqlCommand("StudentBatch_ReadById"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);
                DataSet ds = DataAccess.RunCMDGetDataSet(cmd);
                return ds.Tables[0];
            }
        }

        public static bool Update(
    int id,
    int batchid,
    int studentid,
    string modifiedby,
    DateTime modifieddate,
    bool isdeleted)
        {
            bool result = false;

            using (SqlCommand cmd = new SqlCommand("StudentBatch_Update"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@Batchid", batchid);
                cmd.Parameters.AddWithValue("@Studentid", studentid);
                cmd.Parameters.AddWithValue("@Modifiedby", modifiedby);
                cmd.Parameters.AddWithValue("@Modifieddate", modifieddate);
                cmd.Parameters.AddWithValue("@Isdeleted", isdeleted);

                cmd.Parameters.Add("@rowsAffected", SqlDbType.Int)
                    .Direction = ParameterDirection.ReturnValue;

                SqlDataReader r = DataAccess.RunCMDGetDataReader(cmd);

                if (cmd.Parameters["@rowsAffected"].Value.ToString() == "1")
                    result = true;

                r.Close();
                cmd.Connection.Close();
            }

            return result;
        }
        public static bool Delete(int id, string modifiedby, DateTime modifieddate)
        {
            bool result = false;

            using (SqlCommand cmd = new SqlCommand("StudentBatch_Delete"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@ModifiedBy", modifiedby);
                cmd.Parameters.AddWithValue("@ModifiedDate", modifieddate);

                cmd.Parameters.Add("@rowsAffected", SqlDbType.Int)
                    .Direction = ParameterDirection.ReturnValue;

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