using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Internsapp.DL
{
    public class InternData
    {
        public static int Create(string FirstName, string LastName, string UserName, string Password,
                                 DateTime DateOfJoining, int AvailableLeave, string Address, string Phone,
                                 bool IsSystemAdmin, bool IsActive, bool IsLocked, int NoOfAttempts,
                                 string CreatedBy, DateTime CreatedDate, string ModifiedBy, DateTime ModifiedDate, bool IsDeleted)
        {
            using (SqlCommand cmd = new SqlCommand("Interns_Create"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@FirstName", FirstName);
                cmd.Parameters.AddWithValue("@LastName", LastName);
                cmd.Parameters.AddWithValue("@UserName", UserName);
                cmd.Parameters.AddWithValue("@Password", Password);
                cmd.Parameters.AddWithValue("@DateOfJoining", DateOfJoining);
                cmd.Parameters.AddWithValue("@AvailableLeave", AvailableLeave);
                cmd.Parameters.AddWithValue("@Address", Address);
                cmd.Parameters.AddWithValue("@Phone", Phone);
                cmd.Parameters.AddWithValue("@IsSystemAdmin", IsSystemAdmin);
                cmd.Parameters.AddWithValue("@IsActive", IsActive);
                cmd.Parameters.AddWithValue("@IsLocked", IsLocked);
                cmd.Parameters.AddWithValue("@NoOfAttempts", NoOfAttempts);
                cmd.Parameters.AddWithValue("@CreatedBy", CreatedBy);
                cmd.Parameters.AddWithValue("@CreatedDate", CreatedDate);
                cmd.Parameters.AddWithValue("@ModifiedBy", ModifiedBy);
                cmd.Parameters.AddWithValue("@ModifiedDate", ModifiedDate);
                cmd.Parameters.AddWithValue("@IsDeleted", IsDeleted);

                SqlParameter outParam = new SqlParameter("@Id", SqlDbType.Int);
                outParam.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(outParam);

                return DataAccess.RunCmdOutput_int(cmd);
            }
        }

        public static DataTable RetrieveAll()
        {
            using (SqlCommand cmd = new SqlCommand("Interns_ReadAll"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                return DataAccess.RunCMDGetDataSet(cmd).Tables[0];
            }
        }

        public static DataTable RetrieveById(int id)
        {
            using (SqlCommand cmd = new SqlCommand("Interns_ReadByID"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);

                return DataAccess.RunCMDGetDataSet(cmd).Tables[0];
            }
        }

        public static DataTable RetrieveByUserName(string username)
        {
            using (SqlCommand cmd = new SqlCommand("Interns_ReadByUserName"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserName", username);

                return DataAccess.RunCMDGetDataSet(cmd).Tables[0];
            }
        }

        public static bool Update(int Id, string FirstName, string LastName, string UserName, string Password,
                                  DateTime DateOfJoining, int AvailableLeave, string Address, string Phone,
                                  bool IsSystemAdmin, bool IsActive, bool IsLocked, int NoOfAttempts,
                                  string ModifiedBy, DateTime ModifiedDate, bool IsDeleted)
        {
            using (SqlCommand cmd = new SqlCommand("Interns_Update"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Id", Id);
                cmd.Parameters.AddWithValue("@FirstName", FirstName);
                cmd.Parameters.AddWithValue("@LastName", LastName);
                cmd.Parameters.AddWithValue("@UserName", UserName);
                cmd.Parameters.AddWithValue("@Password", Password);
                cmd.Parameters.AddWithValue("@DateOfJoining", DateOfJoining);
                cmd.Parameters.AddWithValue("@AvailableLeave", AvailableLeave);
                cmd.Parameters.AddWithValue("@Address", Address);
                cmd.Parameters.AddWithValue("@Phone", Phone);
                cmd.Parameters.AddWithValue("@IsSystemAdmin", IsSystemAdmin);
                cmd.Parameters.AddWithValue("@IsActive", IsActive);
                cmd.Parameters.AddWithValue("@IsLocked", IsLocked);
                cmd.Parameters.AddWithValue("@NoOfAttempts", NoOfAttempts);
                cmd.Parameters.AddWithValue("@ModifiedBy", ModifiedBy);
                cmd.Parameters.AddWithValue("@ModifiedDate", ModifiedDate);
                cmd.Parameters.AddWithValue("@IsDeleted", IsDeleted);

                cmd.Parameters.Add("@rowsAffected", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;

                DataAccess.RunCMDGetDataReader(cmd);

                return cmd.Parameters["@rowsAffected"].Value.ToString() == "1";
            }
        }

        public static bool Delete(string usrName, int id)
        {
            using (SqlCommand cmd = new SqlCommand("Interns_Delete"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@ModifiedBy", usrName);
                cmd.Parameters.AddWithValue("@ModifiedDate", DateTime.Now);

                cmd.Parameters.Add("@rowsAffected", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;

                DataAccess.RunCMDGetDataReader(cmd);

                return cmd.Parameters["@rowsAffected"].Value.ToString() == "1";
            }
        }

        public static DataTable Authenticate(string username, string password)
        {
            using (SqlCommand cmd = new SqlCommand("Interns_Authenticate"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@UserName", username);
                cmd.Parameters.AddWithValue("@Password", password);

                return DataAccess.RunCMDGetDataSet(cmd).Tables[0];
            }
        }

        public static DataTable Login(string username, string password)
        {
            using (SqlCommand cmd = new SqlCommand("Interns_Login"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@UserName", username);
                cmd.Parameters.AddWithValue("@Password", password);

                return DataAccess.RunCMDGetDataSet(cmd).Tables[0];
            }
        }

        public static int Register(string usrName, string FirstName, string LastName, string UserName, string Password,
                                   DateTime DateOfJoining, int AvailableLeave, string Address, string Phone)
        {
            return Create(FirstName, LastName, UserName, Password,
                          DateOfJoining, AvailableLeave, Address, Phone,
                          false, true, false, 0,
                          usrName, DateTime.Now, usrName, DateTime.Now, false);
        }
    }
}