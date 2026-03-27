using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;


namespace SmartCMApp.DL
{
        public class CategoryData
        {
            public static int Create(string categoryName,
                                     bool isActive,
                                     string createdBy,
                                     DateTime createdDate,
                                     string modifiedBy,
                                     DateTime modifiedDate,
                                     bool isDeleted)
            {
                int returnValue;

                using (SqlCommand cmd = new SqlCommand("Category_Create"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add(new SqlParameter("@ID", SqlDbType.Int));
                    cmd.Parameters["@ID"].Direction = ParameterDirection.Output;

                    cmd.Parameters.AddWithValue("@CategoryName", categoryName);
                    cmd.Parameters.AddWithValue("@IsActive", isActive);
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
                DataTable dt = null;

                using (SqlCommand cmd = new SqlCommand("Category_ReadAll"))
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

            public static DataTable RetrieveById(int id)
            {
                DataTable dt = null;

                using (SqlCommand cmd = new SqlCommand("Category_ReadByID"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@ID", id);

                    DataSet ds = DataAccess.RunCMDGetDataSet(cmd);
                    dt = ds.Tables[0];

                    cmd.Connection.Close();
                    cmd.Connection.Dispose();
                    cmd.Dispose();
                }

                return dt;
            }

            public static Boolean Update(int id,
                                         string categoryName,
                                         bool isActive,
                                         string createdBy,
                                         DateTime createdDate,
                                         string modifiedBy,
                                         DateTime modifiedDate,
                                         bool isDeleted)
            {
                bool result = false;

                using (SqlCommand cmd = new SqlCommand("Category_Update"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@ID", id);
                    cmd.Parameters.AddWithValue("@CategoryName", categoryName);
                    cmd.Parameters.AddWithValue("@IsActive", isActive);
                    cmd.Parameters.AddWithValue("@CreatedBy", createdBy);
                    cmd.Parameters.AddWithValue("@CreatedDate", createdDate);
                    cmd.Parameters.AddWithValue("@ModifiedBy", modifiedBy);
                    cmd.Parameters.AddWithValue("@ModifiedDate", modifiedDate);
                    cmd.Parameters.AddWithValue("@IsDeleted", isDeleted);

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

            public static Boolean Delete(int id)
            {
                bool result = false;

                using (SqlCommand cmd = new SqlCommand("Category_Delete"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@ID", id);
                    cmd.Parameters.AddWithValue("@ModifiedBy", "Admin");
                    cmd.Parameters.AddWithValue("@ModifiedDate", DateTime.Now);

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


