using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;


namespace SmartCMApp.DL
{
        public class ContactData
        {
        public static int Create(
string fullName,
string userName,
string phone,
string city,
int categoryId,
string password,
string role,
bool isActive,
bool isLogged,
int noOfAttempts,
string createdBy,
DateTime createdDate,
string modifiedBy,
DateTime modifiedDate,
bool isDeleted)
        {
                int returnValue;

                using (SqlCommand cmd = new SqlCommand("Contact_Create"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add(new SqlParameter("@ID", SqlDbType.Int));
                    cmd.Parameters["@ID"].Direction = ParameterDirection.Output;

                cmd.Parameters.AddWithValue("@FullName", fullName);
                cmd.Parameters.AddWithValue("@UserName", userName);
                cmd.Parameters.AddWithValue("@Phone", phone);
                cmd.Parameters.AddWithValue("@City", city);
                cmd.Parameters.AddWithValue("@CategoryId", categoryId);
                cmd.Parameters.AddWithValue("@PassWord", password);
                cmd.Parameters.AddWithValue("@Role", role);
                cmd.Parameters.AddWithValue("@IsActive", isActive);
                cmd.Parameters.AddWithValue("@IsLogged", isLogged);
                cmd.Parameters.AddWithValue("@NoOfAttempts", noOfAttempts);
                cmd.Parameters.AddWithValue("@CreatedBy", createdBy);
                cmd.Parameters.AddWithValue("@CreatedDate", createdDate);
                cmd.Parameters.AddWithValue("@ModifiedBy", modifiedBy);
                cmd.Parameters.AddWithValue("@ModifiedDate", modifiedDate);
                cmd.Parameters.AddWithValue("@IsDeleted", isDeleted);

                returnValue = DataAccess.RunCmdOutput_int(cmd);

                    cmd.Connection.Close();
                    cmd.Connection.Dispose();
                    cmd.Dispose();

                    return returnValue;
                }
            }

        public static DataTable RetrieveAll()
        {
            using (SqlCommand cmd = new SqlCommand("Contact_ReadAll"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                DataSet ds = DataAccess.RunCMDGetDataSet(cmd);
                DataTable dt = ds.Tables[0];

                cmd.Connection.Close();
                cmd.Connection.Dispose();
                cmd.Dispose();

                return dt;
            }
        }

        public static DataTable RetrieveById(int id)
        {
            using (SqlCommand cmd = new SqlCommand("Contact_ReadByID"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);

                DataSet ds = DataAccess.RunCMDGetDataSet(cmd);
                DataTable dt = ds.Tables[0];

                cmd.Connection.Close();
                cmd.Connection.Dispose();
                cmd.Dispose();

                return dt;
            }
        }

        public static bool Update(int id,
                          string fullName,
                          string userName,
                          string phone,
                          string city,
                          int categoryId,
                          string password,
                          string role,
                          bool isActive,
                          bool isLogged,
                          int noOfAttempts,
                          string modifiedBy,
                          DateTime modifiedDate)
        {
            using (SqlCommand cmd = new SqlCommand("Contact_Update"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@FullName", fullName);
                cmd.Parameters.AddWithValue("@UserName", userName);
                cmd.Parameters.AddWithValue("@Phone", phone);
                cmd.Parameters.AddWithValue("@City", city);
                cmd.Parameters.AddWithValue("@CategoryId", categoryId);
                cmd.Parameters.AddWithValue("@Password", password);
                cmd.Parameters.AddWithValue("@Role", role);
                cmd.Parameters.AddWithValue("@IsActive", isActive);
                cmd.Parameters.AddWithValue("@IsLogged", isLogged);
                cmd.Parameters.AddWithValue("@NoOfAttempts", noOfAttempts);
                cmd.Parameters.AddWithValue("@ModifiedBy", modifiedBy);
                cmd.Parameters.AddWithValue("@ModifiedDate", modifiedDate);

                cmd.Parameters.Add("@rowsAffected", SqlDbType.Int);
                cmd.Parameters["@rowsAffected"].Direction = ParameterDirection.ReturnValue;

                SqlDataReader r = DataAccess.RunCMDGetDataReader(cmd);

                bool result = cmd.Parameters["@rowsAffected"].Value.ToString() == "1";

                r.Close();
                cmd.Connection.Close();
                cmd.Connection.Dispose();
                cmd.Dispose();

                return result;
            }
        }

        public static bool Delete(int id, string modifiedBy)
        {
            using (SqlCommand cmd = new SqlCommand("Contact_Delete"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@ModifiedBy", modifiedBy);
                cmd.Parameters.AddWithValue("@ModifiedDate", DateTime.Now);

                cmd.Parameters.Add("@rowsAffected", SqlDbType.Int);
                cmd.Parameters["@rowsAffected"].Direction = ParameterDirection.ReturnValue;

                SqlDataReader r = DataAccess.RunCMDGetDataReader(cmd);

                bool result = cmd.Parameters["@rowsAffected"].Value.ToString() == "1";

                r.Close();
                cmd.Connection.Close();
                cmd.Connection.Dispose();
                cmd.Dispose();

                return result;
            }
        }

        public static DataTable RetrieveByUserName(string userName)
        {
            using (SqlCommand cmd = new SqlCommand("Contacts_RetrieveByUserName"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@UserName", userName);

                DataSet ds = DataAccess.RunCMDGetDataSet(cmd);
                DataTable dt = ds.Tables[0];

                cmd.Connection.Close();
                cmd.Connection.Dispose();
                cmd.Dispose();

                return dt;
            }
        }
    }
    }


