using System;
using System.Data;
using System.Data.SqlClient;

namespace InternLAApp.DL
{
    public class RegisterData
    {
        
        public static int Create(string username, string password,
                         string firstname, string lastname,
                         string phone, string address,
                         bool isSystemUser, bool isSystemAdmin,
                         bool isSystemSupervisor, bool isActive,
                         bool isLocked)
        {
            using (SqlCommand cmd = new SqlCommand("Register_Create"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@Id", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd.Parameters.AddWithValue("@UserName", username);
                cmd.Parameters.AddWithValue("@Password", password);
                cmd.Parameters.AddWithValue("@FirstName", firstname);
                cmd.Parameters.AddWithValue("@LastName", lastname);
                cmd.Parameters.AddWithValue("@Phone", phone);
                cmd.Parameters.AddWithValue("@Address", address);
                cmd.Parameters.AddWithValue("@IsSystemUser", isSystemUser);
                cmd.Parameters.AddWithValue("@IsSystemAdmin", isSystemAdmin);
                cmd.Parameters.AddWithValue("@IsSystemSupervisor", isSystemSupervisor);
                cmd.Parameters.AddWithValue("@IsActive", isActive);
                cmd.Parameters.AddWithValue("@IsLocked", isLocked);
                cmd.Parameters.AddWithValue("@CreatedBy", "Admin");
                cmd.Parameters.AddWithValue("@CreatedDate", DateTime.Now);
                cmd.Parameters.AddWithValue("@ModifiedBy", "Admin");
                cmd.Parameters.AddWithValue("@ModifiedDate", DateTime.Now);
                cmd.Parameters.AddWithValue("@IsDeleted", false);




                return DataAccess.RunCmdOutput_int(cmd);
            }
        }

        public static int Update(int id, string username, string password,
                           string firstname, string lastname,
                           string phone, string address,
                           bool isSystemUser, bool isSystemAdmin,
                           bool isSystemSupervisor, bool isActive, bool isLocked,
                           int noAttempts)  
        {
            using (SqlCommand cmd = new SqlCommand("Register_Update"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@UserName", username);
                cmd.Parameters.AddWithValue("@Password", password);
                cmd.Parameters.AddWithValue("@FirstName", firstname);
                cmd.Parameters.AddWithValue("@LastName", lastname);
                cmd.Parameters.AddWithValue("@Phone", phone);
                cmd.Parameters.AddWithValue("@Address", address);
                cmd.Parameters.AddWithValue("@IsSystemUser", isSystemUser);
                cmd.Parameters.AddWithValue("@IsSystemAdmin", isSystemAdmin);
                cmd.Parameters.AddWithValue("@IsSystemSupervisor", isSystemSupervisor);
                cmd.Parameters.AddWithValue("@IsActive", isActive);
                cmd.Parameters.AddWithValue("@IsLocked", isLocked);
                cmd.Parameters.AddWithValue("@NoAttempts", noAttempts); 

                return DataAccess.RunCmdOutput_int(cmd);
            }
        }



        public static int Delete(int id)
        {
            using (SqlCommand cmd = new SqlCommand("Register_Delete"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);

                return DataAccess.RunCmdOutput_int(cmd);
            }
        }
        public static DataSet RetrieveByUserName(string UserName)
        {
            using (SqlCommand cmd = new SqlCommand("Register_RetrieveByUserName"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserName",UserName);

                return DataAccess.RunCMDGetDataSet(cmd);
            }
        }


        public static DataSet Retrieve(int id)
        {
            using (SqlCommand cmd = new SqlCommand("Register_Retrieve"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);

                return DataAccess.RunCMDGetDataSet(cmd);
            }
        }

        public static DataSet RetrieveAll()
        {
            using (SqlCommand cmd = new SqlCommand("Register_RetrieveAll"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                return DataAccess.RunCMDGetDataSet(cmd);
            }
        }
    }
}
