using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UserTaskApp.DL
{
  public class UserData
        {
        // CREATE
        public static int Create(string name, string role,
                     string CreatedBy, DateTime CreatedDate,
                     string ModifiedBy, DateTime ModifiedDate,
                     bool IsDeleted)
        {
            int returnValue;

            using (SqlCommand cmd = new SqlCommand("User_Create"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                // ADD PARAMETERS IN SAME ORDER AS SQL

                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@Role", role);
                cmd.Parameters.AddWithValue("@CreatedDate", CreatedDate);
                cmd.Parameters.AddWithValue("@CreatedBy", CreatedBy);
                cmd.Parameters.AddWithValue("@ModifiedDate", ModifiedDate);
                cmd.Parameters.AddWithValue("@ModifiedBy", ModifiedBy);
                cmd.Parameters.AddWithValue("@IsDeleted", IsDeleted);

                SqlParameter outParam = new SqlParameter("@Id", SqlDbType.Int);
                outParam.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(outParam);

                returnValue = DataAccess.RunCmdOutput_int(cmd);

                return returnValue;
            }
        }

        // READ ALL
        public static DataTable RetrieveAll()
            {
                DataTable dt;

                using (SqlCommand cmd = new SqlCommand("User_ReadAll"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    DataSet ds = DataAccess.RunCMDGetDataSet(cmd);
                    dt = ds.Tables[0];

                    cmd.Connection.Close();
                    cmd.Connection.Dispose();
                    cmd.Dispose();
                }

                return dt;
            }

            // READ BY ID
            public static DataTable RetrieveById(int id)
            {
                DataTable dt;

                using (SqlCommand cmd = new SqlCommand("User_ReadById"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Id", id);

                    DataSet ds = DataAccess.RunCMDGetDataSet(cmd);
                    dt = ds.Tables[0];

                    cmd.Connection.Close();
                    cmd.Connection.Dispose();
                    cmd.Dispose();
                }

                return dt;
            }

            // UPDATE
            public static bool Update(int id, string name, string role,
                                      string CreatedBy, DateTime CreatedDate, string ModifiedBy, DateTime ModifiedDate, bool IsDeleted)
            {
                bool result = false;

                using (SqlCommand cmd = new SqlCommand("User_Update"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@Id", id);
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Role", role);
                    cmd.Parameters.AddWithValue("@CreatedBy", CreatedBy);
                    cmd.Parameters.AddWithValue("@CreatedDate", CreatedDate);
                    cmd.Parameters.AddWithValue("@ModifiedBy", ModifiedBy);
                    cmd.Parameters.AddWithValue("@ModifiedDate", ModifiedDate);
                    cmd.Parameters.AddWithValue("@IsDeleted", IsDeleted);

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

            // DELETE
            public static bool Delete(int id)
            {
                bool result = false;

                using (SqlCommand cmd = new SqlCommand("User_Delete"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Id", id);

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
        }
    }


