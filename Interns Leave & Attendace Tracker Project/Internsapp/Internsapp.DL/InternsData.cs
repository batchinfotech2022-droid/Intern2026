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
        public static int Create(string firstName, string lastName, string userName, string password,
                                 DateTime dateOfJoining, int availableLeave, string address,
                                 string phone, bool isSystemAdmin, bool isActive, bool isLocked,
                                 int noOfAttempts, string createdBy, DateTime createdDate,
                                 string modifiedBy, DateTime modifiedDate, bool isDeleted)
        {
            using (SqlCommand cmd = new SqlCommand("Interns_Create"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@Id", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd.Parameters.AddWithValue("@FirstName", firstName);
                cmd.Parameters.AddWithValue("@LastName", lastName);
                cmd.Parameters.AddWithValue("@UserName", userName);
                cmd.Parameters.AddWithValue("@Password", password);
                cmd.Parameters.AddWithValue("@DateOfJoining", dateOfJoining);
                cmd.Parameters.AddWithValue("@AvailableLeave", availableLeave);
                cmd.Parameters.AddWithValue("@Address", address);
                cmd.Parameters.AddWithValue("@Phone", phone);
                cmd.Parameters.AddWithValue("@IsSystemAdmin", isSystemAdmin);
                cmd.Parameters.AddWithValue("@IsActive", isActive);
                cmd.Parameters.AddWithValue("@IsLocked", isLocked);
                cmd.Parameters.AddWithValue("@NoOfAttempts", noOfAttempts);
                cmd.Parameters.AddWithValue("@CreatedBy", createdBy);
                cmd.Parameters.AddWithValue("@CreatedDate", createdDate);
                cmd.Parameters.AddWithValue("@ModifiedBy", modifiedBy);
                cmd.Parameters.AddWithValue("@ModifiedDate", modifiedDate);
                cmd.Parameters.AddWithValue("@IsDeleted", isDeleted);

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

        public static DataTable RetrieveByUserName(string userName)
        {
            using (SqlCommand cmd = new SqlCommand("Interns_RetrieveByUserName"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserName", userName);
                return DataAccess.RunCMDGetDataSet(cmd).Tables[0];
            }
        }

        public static bool Update(int id, string firstName, string lastName, string userName,
                                  string password, DateTime dateOfJoining, int availableLeave,
                                  string address, string phone, bool isSystemAdmin, bool isActive,
                                  bool isLocked, int noOfAttempts, string modifiedBy,
                                  DateTime modifiedDate, bool isDeleted)
        {
            using (SqlCommand cmd = new SqlCommand("Interns_Update"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@FirstName", firstName);
                cmd.Parameters.AddWithValue("@LastName", lastName);
                cmd.Parameters.AddWithValue("@UserName", userName);
                cmd.Parameters.AddWithValue("@Password", password);
                cmd.Parameters.AddWithValue("@DateOfJoining", dateOfJoining);
                cmd.Parameters.AddWithValue("@AvailableLeave", availableLeave);
                cmd.Parameters.AddWithValue("@Address", address);
                cmd.Parameters.AddWithValue("@Phone", phone);
                cmd.Parameters.AddWithValue("@IsSystemAdmin", isSystemAdmin);
                cmd.Parameters.AddWithValue("@IsActive", isActive);
                cmd.Parameters.AddWithValue("@IsLocked", isLocked);
                cmd.Parameters.AddWithValue("@NoOfAttempts", noOfAttempts);
                cmd.Parameters.AddWithValue("@ModifiedBy", modifiedBy);
                cmd.Parameters.AddWithValue("@ModifiedDate", modifiedDate);
                cmd.Parameters.AddWithValue("@IsDeleted", isDeleted);

                cmd.Parameters.Add("@rowsAffected", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;

                SqlDataReader r = DataAccess.RunCMDGetDataReader(cmd);
                bool result = cmd.Parameters["@rowsAffected"].Value.ToString() == "1";
                r.Close();
                return result;
            }
        }
    }
}