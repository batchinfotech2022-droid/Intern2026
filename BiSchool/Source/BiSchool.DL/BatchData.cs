using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BiSchool.DL
{
    public class BatchData
    {
        public static int Create(string Title, string Timing, string Subject, string CreatedBy, DateTime CreatedDate, string ModifiedBy, DateTime ModifiedDate, bool IsDeleted)
        {
            int returnValue;
            using (SqlCommand cmd = new SqlCommand("Batch_Create"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@Id", SqlDbType.Int));
                cmd.Parameters["@Id"].Direction = ParameterDirection.Output;
                cmd.Parameters.AddWithValue("@Title", Title);
                cmd.Parameters.AddWithValue("@Timing", Timing);
                cmd.Parameters.AddWithValue("@Subject", Subject);
                cmd.Parameters.AddWithValue("@CreatedBy", CreatedBy);
                cmd.Parameters.AddWithValue("@CreatedDate", CreatedDate);
                cmd.Parameters.AddWithValue("@ModifiedBy", ModifiedBy);
                cmd.Parameters.AddWithValue("@ModifiedDate", ModifiedDate);
                cmd.Parameters.AddWithValue("@IsDeleted", IsDeleted);
                returnValue = DataAccess.RunCmdOutput_int(cmd);
                cmd.Connection.Close();
                cmd.Connection.Dispose();
                cmd.Dispose();
                return returnValue;
            } 
        }
        public static DataTable RetrieveAll()
        {
            DataTable dt = null;
            using (SqlCommand cmd = new SqlCommand("Batch_ReadAll"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                DataSet dr = DataAccess.RunCMDGetDataSet(cmd);
                dt = dr.Tables[0];
                cmd.Connection.Close();
                cmd.Connection.Dispose();
                cmd.Dispose();
            } 
            return dt;
        }
        public static DataTable RetrieveById(int id)
        {
            DataTable dt = null;
            using (SqlCommand cmd = new SqlCommand("Batch_ReadById"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);
                DataSet dr = DataAccess.RunCMDGetDataSet(cmd);
                dt = dr.Tables[0];
                cmd.Connection.Close();
                cmd.Connection.Dispose();
                cmd.Dispose();
            } 
            return dt;
        }
        public static Boolean Update(int Id, string Title, string Timing, string Subject, string CreatedBy, DateTime CreatedDate, string ModifiedBy, DateTime ModifiedDate, bool IsDeleted)
        {
            bool result = false;
            using (SqlCommand cmd = new SqlCommand("Batch_Update"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", Id);
                cmd.Parameters.AddWithValue("@Title", Title);
                cmd.Parameters.AddWithValue("@Timing", Timing);
                cmd.Parameters.AddWithValue("@Subject", Subject);
                cmd.Parameters.AddWithValue("@CreatedBy", CreatedBy);
                cmd.Parameters.AddWithValue("@CreatedDate", CreatedDate);
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
            } 
            return result;
        }
        public static Boolean Delete(int id, string modifiedBy)
        {
            bool result = false;

            using (SqlCommand cmd = new SqlCommand("Batch_Delete"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.Add("@rowsAffected", SqlDbType.Int);
                cmd.Parameters["@rowsAffected"].Direction = ParameterDirection.ReturnValue;

                SqlDataReader r = DataAccess.RunCMDGetDataReader(cmd);

                if (cmd.Parameters["@rowsAffected"].Value.ToString() == "1")
                    result = true;

                r.Close();
            }

            return result;
        }
    }
    
} //BiSchool.DL

