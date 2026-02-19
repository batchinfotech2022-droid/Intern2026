using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Register.DL
{
    public class Register
    {
        public static int Create(
            string userName, string password, string firstName, string lastName,
            string phone, string address,
            bool isSystemUser, bool isSystemAdmin, bool isSystemSupervisor,
            bool isActive, bool isLocked, int noAttempts,
            DateTime createdDate, string createdBy,
            DateTime modifiedDate, string modifiedBy, bool isDeleted)
        {
            int returnValue;

            using (SqlCommand cmd = new SqlCommand("SystemUsers_Create"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@UserName", userName);
                cmd.Parameters.AddWithValue("@Password", password);
                cmd.Parameters.AddWithValue("@FirstName", firstName);
                cmd.Parameters.AddWithValue("@LastName", lastName);
                cmd.Parameters.AddWithValue("@Phone", phone);
                cmd.Parameters.AddWithValue("@Address", address);

                cmd.Parameters.AddWithValue("@IsSystemUser", isSystemUser);
                cmd.Parameters.AddWithValue("@IsSystemAdmin", isSystemAdmin);
                cmd.Parameters.AddWithValue("@IsSystemSupervisor", isSystemSupervisor);

                cmd.Parameters.AddWithValue("@IsActive", isActive);
                cmd.Parameters.AddWithValue("@IsLocked", isLocked);
                cmd.Parameters.AddWithValue("@NoAttempts", noAttempts);

                cmd.Parameters.AddWithValue("@CreatedDate", createdDate);
                cmd.Parameters.AddWithValue("@CreatedBy", createdBy);
                cmd.Parameters.AddWithValue("@ModifiedDate", modifiedDate);
                cmd.Parameters.AddWithValue("@ModifiedBy", modifiedBy);
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
            using (SqlCommand cmd = new SqlCommand("SystemUsers_ReadAll"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                DataSet ds = DataAccess.RunCMDGetDataSet(cmd);
                return ds.Tables[0];
            }
        }

        public static DataTable RetrieveById(int id)
        {
            using (SqlCommand cmd = new SqlCommand("SystemUsers_ReadById"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);

                DataSet ds = DataAccess.RunCMDGetDataSet(cmd);
                return ds.Tables[0];
            }
        }

        public static bool Update(
            int id,
            string userName, string password, string firstName, string lastName,
            string phone, string address,
            bool isSystemUser, bool isSystemAdmin, bool isSystemSupervisor,
            bool isActive, bool isLocked, int noAttempts,
            DateTime modifiedDate, string modifiedBy)
        {
            using (SqlCommand cmd = new SqlCommand("SystemUsers_Update"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@UserName", userName);
                cmd.Parameters.AddWithValue("@Password", password);
                cmd.Parameters.AddWithValue("@FirstName", firstName);
                cmd.Parameters.AddWithValue("@LastName", lastName);
                cmd.Parameters.AddWithValue("@Phone", phone);
                cmd.Parameters.AddWithValue("@Address", address);

                cmd.Parameters.AddWithValue("@IsSystemUser", isSystemUser);
                cmd.Parameters.AddWithValue("@IsSystemAdmin", isSystemAdmin);
                cmd.Parameters.AddWithValue("@IsSystemSupervisor", isSystemSupervisor);

                cmd.Parameters.AddWithValue("@IsActive", isActive);
                cmd.Parameters.AddWithValue("@IsLocked", isLocked);
                cmd.Parameters.AddWithValue("@NoAttempts", noAttempts);

                cmd.Parameters.AddWithValue("@ModifiedDate", modifiedDate);
                cmd.Parameters.AddWithValue("@ModifiedBy", modifiedBy);

                cmd.Parameters.Add("@rowsAffected", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;

                SqlDataReader r = DataAccess.RunCMDGetDataReader(cmd);
                bool result = cmd.Parameters["@rowsAffected"].Value.ToString() == "1";
                r.Close();

                return result;
            }
        }

        public static bool Delete(int id)
        {
            using (SqlCommand cmd = new SqlCommand("SystemUsers_Delete"))
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