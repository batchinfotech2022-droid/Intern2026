using Microsoft.SqlServer.Server;
using System;
using System.Data;
using System.Data.SqlClient;

namespace SmartCMApp.DL
{
    public class RegisterData
    {
        public static int Create(string firstName, string lastName, string address,
                                 string phone, string userName, string password,
                                 bool isSystemAdmin, bool isSystemUser,
                                 bool isSystemSupervisor, bool isActive,
                                 bool isLogged, int noOfAttempts,
                                 string createdBy, DateTime createdDate,
                                 string modifiedBy, DateTime modifiedDate,
                                 bool isDeleted)
        {
            int returnValue;

            using (SqlCommand cmd = new SqlCommand("Register_Create"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@Id", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd.Parameters.AddWithValue("@FirstName", firstName);
                cmd.Parameters.AddWithValue("@LastName", lastName);
                cmd.Parameters.AddWithValue("@Address", address);
                cmd.Parameters.AddWithValue("@Phone", phone);
                cmd.Parameters.AddWithValue("@UserName", userName);
                cmd.Parameters.AddWithValue("@Password", password);
                cmd.Parameters.AddWithValue("@IsSystemAdmin", isSystemAdmin);
                cmd.Parameters.AddWithValue("@IsSystemUser", isSystemUser);
                cmd.Parameters.AddWithValue("@IsSystemSupervisor", isSystemSupervisor);
                cmd.Parameters.AddWithValue("@IsActive", isActive);
                cmd.Parameters.AddWithValue("@IsLogged", isLogged);
                cmd.Parameters.AddWithValue("@NoOfAttempts", noOfAttempts);
                cmd.Parameters.AddWithValue("@CreatedBy", createdBy);
                cmd.Parameters.AddWithValue("@CreatedDate", createdDate);
                cmd.Parameters.AddWithValue("@ModifiedBy", modifiedBy);
                cmd.Parameters.AddWithValue("@ModifiedDate", modifiedDate);
                cmd.Parameters.AddWithValue("@IsDeleted", isDeleted);

                returnValue = DataAccess.RunCmdOutput_int(cmd);
            }

            return returnValue;
        }

       
        public static DataTable RetrieveById(int id)
        {
            DataTable dt;

            using (SqlCommand cmd = new SqlCommand("Register_ReadById"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);

                DataSet ds = DataAccess.RunCMDGetDataSet(cmd);
                dt = ds.Tables[0];
            }

            return dt;
        }

       
        public static DataTable RetrieveAll()
        {
            DataTable dt;

            using (SqlCommand cmd = new SqlCommand("Register_ReadAll"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                DataSet ds = DataAccess.RunCMDGetDataSet(cmd);
                dt = ds.Tables[0];
            }

            return dt;
        }


        public static DataTable RetrieveByUserName(string userName)
        {
            DataTable dt;

            using(SqlCommand cmd = new SqlCommand("Register_RetrieveByUserName"))

            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserName", userName);

                DataSet ds = DataAccess.RunCMDGetDataSet(cmd);
                dt = ds.Tables[0];
            }

            return dt;
        }

       
        public static DataTable Login(string userName, string password)
        {
            DataTable dt;

            using (SqlCommand cmd = new SqlCommand("Register_Login"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserName", userName);
                cmd.Parameters.AddWithValue("@Password", password);

                DataSet ds = DataAccess.RunCMDGetDataSet(cmd);
                dt = ds.Tables[0];
            }

            return dt;
        }

        public static bool Update(int id,string firstName,string lastName,string address,string phone, string userName, string password,
                                  bool isSystemUser,bool isSystemAdmin,bool isSystemSupervisor,
                                  bool isActive, bool isLogged,
                                  int noOfAttempts, string modifiedBy,
                                  DateTime modifiedDate)
        {
            bool result = false;

            using (SqlCommand cmd = new SqlCommand("Register_Update"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Id", id);

                cmd.Parameters.AddWithValue("@FirstName", firstName);

                cmd.Parameters.AddWithValue("@LastName", lastName);
                cmd.Parameters.AddWithValue("@Address", address);
                cmd.Parameters.AddWithValue("@Phone", phone);
                cmd.Parameters.AddWithValue("@UserName", userName);
                cmd.Parameters.AddWithValue("@Password", password);
                cmd.Parameters.AddWithValue("@IsSystemUser", isSystemUser);
                cmd.Parameters.AddWithValue("@IsSystemAdmin", isSystemAdmin);
                cmd.Parameters.AddWithValue("@IsSystemSupervisor", isSystemSupervisor);
                cmd.Parameters.AddWithValue("@IsActive", isActive);
                cmd.Parameters.AddWithValue("@IsLogged", isLogged);
                cmd.Parameters.AddWithValue("@NoOfAttempts", noOfAttempts);
                cmd.Parameters.AddWithValue("@ModifiedBy", modifiedBy);
                cmd.Parameters.AddWithValue("@ModifiedDate", modifiedDate);

                cmd.Parameters.Add("@rowsAffected", SqlDbType.Int)
                               .Direction = ParameterDirection.ReturnValue;

                SqlDataReader r = DataAccess.RunCMDGetDataReader(cmd);

                if (cmd.Parameters["@rowsAffected"].Value.ToString() == "1")
                    result = true;

                r.Close();
            }

            return result;
        }

      
        public static bool Delete(int id)
        {
            bool result = false;

            using (SqlCommand cmd = new SqlCommand("Register_Delete"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);

                cmd.Parameters.Add("@rowsAffected", SqlDbType.Int)
                               .Direction = ParameterDirection.ReturnValue;

                SqlDataReader r = DataAccess.RunCMDGetDataReader(cmd);

                if (cmd.Parameters["@rowsAffected"].Value.ToString() == "1")
                    result = true;

                r.Close();
            }

            return result;
        }
    }
}
