using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BiSchool.DL
{
    public class StudentBatchData
    {
        public static int Create(int BatchId, int StudentId,  string CreatedBy, DateTime CreatedDate, string ModifiedBy, DateTime ModifiedDate, bool IsDeleted)
        {
            int returnValue;
            using (SqlCommand cmd = new SqlCommand("StudentBatch_Create"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@Id", SqlDbType.Int));
                cmd.Parameters["@Id"].Direction = ParameterDirection.Output;
                cmd.Parameters.AddWithValue("@Batchid", BatchId);
                cmd.Parameters.AddWithValue("@Studentid", StudentId);
                cmd.Parameters.AddWithValue("@CreatedBy", CreatedBy);
                cmd.Parameters.AddWithValue("@ModifiedDate", CreatedDate);
                cmd.Parameters.AddWithValue("@ModifiedBy", ModifiedBy);
                cmd.Parameters.AddWithValue("@ModifiedDate", ModifiedDate);
                cmd.Parameters.AddWithValue("@IsDeleted", IsDeleted);
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
        public static Boolean Update(int Id, int BatchId, int StudentId, string CreatedBy, DateTime CreatedDate, string ModifiedBy, DateTime ModifiedDate, bool IsDeleted)
       
        {
            bool result = false;
            using (SqlCommand cmd = new SqlCommand("StudentBatch_Update"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", Id);
                cmd.Parameters.AddWithValue("@Batchid", BatchId);
                cmd.Parameters.AddWithValue("@Studentid", StudentId);
                cmd.Parameters.AddWithValue("@CreatedBy", CreatedBy);
                cmd.Parameters.AddWithValue("@ModifiedDate", CreatedDate);
                cmd.Parameters.AddWithValue("@ModifiedBy", ModifiedBy);
                cmd.Parameters.AddWithValue("@ModifiedDate", ModifiedDate);
                cmd.Parameters.AddWithValue("@IsDeleted", IsDeleted);
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
} //BiSchool.DL
