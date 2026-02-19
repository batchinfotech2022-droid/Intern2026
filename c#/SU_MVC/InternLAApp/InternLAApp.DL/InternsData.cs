using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InternLAApp.DL
{
    public class InternsData
    {
        
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

                
                SqlParameter idParam = new SqlParameter("@Id", SqlDbType.Int)
                {
                    Direction = ParameterDirection.Output
                };
                cmd.Parameters.Add(idParam);

                DataAccess.RunCmdOutput_int(cmd);

                newId = Convert.ToInt32(cmd.Parameters["@Id"].Value);

                
                cmd.Connection.Close();
                cmd.Connection.Dispose();
            }

            return newId;
        }

        
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