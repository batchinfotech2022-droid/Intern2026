using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Xml;
namespace BiSchool.DL
{
    public class StudentBatchData
    {
        public static int Create(int batchid, int studentid, DateTime createddate, string createdby, DateTime modifieddate, string modifiedby, bool isdeleted)
        {
            int returnValue;
            using (SqlCommand cmd = new SqlCommand("StudentBatch_Create"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@Id", SqlDbType.Int));
                cmd.Parameters["@Id"].Direction = ParameterDirection.Output;
                cmd.Parameters.AddWithValue("@Batchid", batchid);
                cmd.Parameters.AddWithValue("@Studentid", studentid);
                cmd.Parameters.AddWithValue("@Createddate", createddate);
                cmd.Parameters.AddWithValue("@Createdby", createdby);
                cmd.Parameters.AddWithValue("@Modifieddate", modifieddate);
                cmd.Parameters.AddWithValue("@Modifiedby", modifiedby);
                cmd.Parameters.AddWithValue("@Isdeleted", isdeleted);
                returnValue = DataAccess.RunCmdOutput_int(cmd);
                cmd.Connection.Close();
                cmd.Connection.Dispose();
                cmd.Dispose();
                return returnValue;
            } //close using statement
        }
        public static DataTable RetrieveAll()
        {
            DataTable dt = null;
            using (SqlCommand cmd = new SqlCommand("StudentBatch_ReadAll"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                DataSet dr = DataAccess.RunCMDGetDataSet(cmd);
                dt = dr.Tables[0];
                cmd.Connection.Close();
                cmd.Connection.Dispose();
                cmd.Dispose();
            } //close using statement
            return dt;
        }
        public static DataTable RetrieveById(int id)
        {
            DataTable dt = null;
            using (SqlCommand cmd = new SqlCommand("StudentBatch_ReadById"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);
                DataSet dr = DataAccess.RunCMDGetDataSet(cmd);
                dt = dr.Tables[0];
                cmd.Connection.Close();
                cmd.Connection.Dispose();
                cmd.Dispose();
            } //close using statement 
            return dt;
        }
        public static Boolean Update(int id, int batchid, int studentid, DateTime createddate, string createdby, DateTime modifieddate, string modifiedby, bool isdeleted)
        {
            bool result = false;
            using (SqlCommand cmd = new SqlCommand("StudentBatch_Update"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@Batchid", batchid);
                cmd.Parameters.AddWithValue("@Studentid", studentid);
                cmd.Parameters.AddWithValue("@Createddate", createddate);
                cmd.Parameters.AddWithValue("@Createdby", createdby);
                cmd.Parameters.AddWithValue("@Modifieddate", modifieddate);
                cmd.Parameters.AddWithValue("@Modifiedby", modifiedby);
                cmd.Parameters.AddWithValue("@Isdeleted", isdeleted);
                cmd.Parameters.Add("@rowsAffected", SqlDbType.Int);
                cmd.Parameters["@rowsAffected"].Direction = ParameterDirection.ReturnValue;
                SqlDataReader r = DataAccess.RunCMDGetDataReader(cmd);
                if (cmd.Parameters["@rowsAffected"].Value.ToString() == "1") result = true;
                r.Close();
                cmd.Connection.Close();
                cmd.Connection.Dispose();
                cmd.Dispose();
            } //close using statement 
            return result;
        }
        public static Boolean Delete(int id)
        {
            bool result = false;
            using (SqlCommand cmd = new SqlCommand("StudentBatch_Delete"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.Add("@rowsAffected", SqlDbType.Int);
                cmd.Parameters["@rowsAffected"].Direction = ParameterDirection.ReturnValue;
                SqlDataReader r = DataAccess.RunCMDGetDataReader(cmd);
                if (cmd.Parameters["@rowsAffected"].Value.ToString() == "1") result = true;
                r.Close();
                cmd.Connection.Close();
                cmd.Connection.Dispose();
                cmd.Dispose();
            } //close using statement 
            return result;
        }
    } //StudentBatch
}