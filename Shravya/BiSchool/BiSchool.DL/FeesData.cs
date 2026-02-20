using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BiSchool.DL
{
    public class FeesData
    {
        public static int Create(int studentid, decimal amount, DateTime date,
                                string createdby, DateTime createddate,
                                 string modifiedby, DateTime modifieddate, bool isdeleted)
        {
            int returnValue;
            using (SqlCommand cmd = new SqlCommand("Fees_Create"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@Id", SqlDbType.Int));
                cmd.Parameters["@Id"].Direction = ParameterDirection.Output;
                cmd.Parameters.AddWithValue("@StudentId", studentid);
                cmd.Parameters.AddWithValue("@Amount", amount);
                cmd.Parameters.AddWithValue("@Date", date);
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
            DataTable dt = null;
            using (SqlCommand cmd = new SqlCommand("Fees_ReadAll"))
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
            using (SqlCommand cmd = new SqlCommand("Fees_ReadById"))
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

        public static Boolean Update(int id, int studentid, decimal amount, DateTime date,
                                     string createdby, DateTime createddate, string modifiedby,
                                     DateTime modifieddate,  bool isdeleted)
        {
            bool result = false;
            using (SqlCommand cmd = new SqlCommand("Fees_Update"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@StudentId", studentid);
                cmd.Parameters.AddWithValue("@Amount", amount);
                cmd.Parameters.AddWithValue("@Date", date);
                cmd.Parameters.AddWithValue("@ModifiedBy", modifiedby);
                cmd.Parameters.AddWithValue("@ModifiedDate", modifieddate);
                
                cmd.Parameters.AddWithValue("@IsDeleted", isdeleted);
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

        public static Boolean Delete(int id,string modifiedBy)
        {
            bool result = false;
            using (SqlCommand cmd = new SqlCommand("Fees_Delete"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@ModifiedBy", modifiedBy);
                cmd.Parameters.AddWithValue("@ModifiedDate", DateTime.Now);

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
    } //Fees
}


