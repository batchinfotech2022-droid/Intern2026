using InternLAapp.DL;
using Microsoft.Data.SqlClient;
using System;
using System.Data;

namespace InternLAapp.DAL
{
    public class InternsData
    {
        // CREATE
        public static int Create(string fullName, DateTime dateOfJoining, int availableLeave,
                                 string createdBy, DateTime createdDate,
                                 string modifiedBy, DateTime modifiedDate, bool isDeleted)
        {
            int newId = 0;

            using (SqlCommand cmd = new SqlCommand("Interns_Create"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@FullName", fullName);
                cmd.Parameters.AddWithValue("@DateOfJoining", dateOfJoining);
                cmd.Parameters.AddWithValue("@AvailableLeave", availableLeave);
                cmd.Parameters.AddWithValue("@CreatedBy", createdBy);
                cmd.Parameters.AddWithValue("@CreatedDate", createdDate);
                cmd.Parameters.AddWithValue("@ModifiedBy", modifiedBy);
                cmd.Parameters.AddWithValue("@ModifiedDate", modifiedDate);
                cmd.Parameters.AddWithValue("@IsDeleted", isDeleted);

                // Output parameter
                SqlParameter idParam = new SqlParameter("@Id", SqlDbType.Int)
                {
                    Direction = ParameterDirection.Output
                };
                cmd.Parameters.Add(idParam);

                // Execute
                DataAccess.RunCmdOutput_int(cmd);

                // Get new ID
                newId = Convert.ToInt32(cmd.Parameters["@Id"].Value);

                // Clean up
                cmd.Connection.Close();
                cmd.Connection.Dispose();
            }

            return newId;
        }

        // RETRIEVE ALL
        public static DataTable RetrieveAll()
        {
            using (SqlCommand cmd = new SqlCommand("Interns_ReadAll"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                DataTable dt = DataAccess.RunCMDGetDataSet(cmd).Tables[0];
                cmd.Connection.Close();
                cmd.Connection.Dispose();
                return dt;
            }
        }

        // RETRIEVE BY ID
        public static DataTable RetrieveById(int id)
        {
            using (SqlCommand cmd = new SqlCommand("Interns_ReadById"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);
                DataTable dt = DataAccess.RunCMDGetDataSet(cmd).Tables[0];
                cmd.Connection.Close();
                cmd.Connection.Dispose();
                return dt;
            }
        }

        // UPDATE
        public static bool Update(int id, string fullName, DateTime dateOfJoining, int availableLeave,
                                  string createdBy, DateTime createdDate,
                                  string modifiedBy, DateTime modifiedDate, bool isDeleted)
        {
            using (SqlCommand cmd = new SqlCommand("Interns_Update"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@FullName", fullName);
                cmd.Parameters.AddWithValue("@DateOfJoining", dateOfJoining);
                cmd.Parameters.AddWithValue("@AvailableLeave", availableLeave);
                cmd.Parameters.AddWithValue("@CreatedBy", createdBy);
                cmd.Parameters.AddWithValue("@CreatedDate", createdDate);
                cmd.Parameters.AddWithValue("@ModifiedBy", modifiedBy);
                cmd.Parameters.AddWithValue("@ModifiedDate", modifiedDate);
                cmd.Parameters.AddWithValue("@IsDeleted", isDeleted);

                cmd.Parameters.Add("@rowsAffected", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;

                DataAccess.RunCMDGetDataReader(cmd);

                bool result = cmd.Parameters["@rowsAffected"].Value.ToString() == "1";

                cmd.Connection.Close();
                cmd.Connection.Dispose();

                return result;
            }
        }

        // DELETE
        public static bool Delete(int id)
        {
            using (SqlCommand cmd = new SqlCommand("Interns_Delete"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.Add("@rowsAffected", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;

                DataAccess.RunCMDGetDataReader(cmd);

                bool result = cmd.Parameters["@rowsAffected"].Value.ToString() == "1";

                cmd.Connection.Close();
                cmd.Connection.Dispose();

                return result;
            }
        }
    }
}
