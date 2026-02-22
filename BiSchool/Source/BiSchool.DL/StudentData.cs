using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BiSchool.DL
{
    public class StudentData
    {
        public static int Create(string fullname, string email, string password, string address, string phone, bool isAdmin, string createdby, DateTime createddate, string modifiedby, DateTime modifieddate, bool isdeleted)
        {
            int returnValue;
            using (SqlCommand cmd = new SqlCommand("Student_Create"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@Id", SqlDbType.Int));
                cmd.Parameters["@Id"].Direction = ParameterDirection.Output;
                cmd.Parameters.AddWithValue("@FullName", fullname);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", password);
                cmd.Parameters.AddWithValue("@Address", address);
                cmd.Parameters.AddWithValue("@IsAdmin", isAdmin);
                cmd.Parameters.AddWithValue("@Phone", phone);
                cmd.Parameters.AddWithValue("@CreatedDate", createddate);
                cmd.Parameters.AddWithValue("@CreatedBy", createdby);
                cmd.Parameters.AddWithValue("@ModifiedDate", modifieddate);
                cmd.Parameters.AddWithValue("@ModifiedBy", modifiedby);
                cmd.Parameters.AddWithValue("@IsDeleted", isdeleted);
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
            using (SqlCommand cmd = new SqlCommand("Student_ReadAll"))
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
            using (SqlCommand cmd = new SqlCommand("Student_ReadById"))
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
        public static Boolean Update(int id, string fullname, string email, string password, string address, string phone, bool isAdmin, string createdby, DateTime createddate, string modifiedby, DateTime modifieddate, bool isdeleted)
        {
            bool result = false;
            using (SqlCommand cmd = new SqlCommand("Student_Update"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@FullName", fullname);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", password);
                cmd.Parameters.AddWithValue("@Address", address);
                cmd.Parameters.AddWithValue("@IsAdmin", isAdmin);
                cmd.Parameters.AddWithValue("@Phone", phone);
                cmd.Parameters.AddWithValue("@CreatedBy", createdby);
                cmd.Parameters.AddWithValue("@CreatedDate", createddate);
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
            } //close using statement 
            return result;
        }
        public static bool Delete(int id, string modifiedBy, DateTime modifiedDate)
        {
            bool result = false;

            using (SqlCommand cmd = new SqlCommand("Student_Delete"))
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
        public static DataTable GetActiveStudents()
        {
            using (SqlCommand cmd = new SqlCommand(
                "SELECT Id, FullName FROM Student WHERE IsDeleted = 0"))
            {
                cmd.CommandType = CommandType.Text;
                DataSet ds = DataAccess.RunCMDGetDataSet(cmd);
                return ds.Tables[0];
            }
        }
    } //StudentBatch
}
