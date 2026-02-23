using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Internsapp.DL
{
    public class LeaveData
    {
        public static int Create(int internId,
                                 DateTime fromDate,
                                 DateTime toDate,
                                 string reason,
                                 string createdBy,
                                 DateTime createdDate,
                                 string modifiedBy,
                                 DateTime modifiedDate,
                                 bool isDeleted)
        {
            int returnValue;

            using (SqlCommand cmd = new SqlCommand("Leave_Create"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(new SqlParameter("@Id", SqlDbType.Int));
                cmd.Parameters["@Id"].Direction = ParameterDirection.Output;

                cmd.Parameters.AddWithValue("@InternId", internId);
                cmd.Parameters.AddWithValue("@FromDate", fromDate);
                cmd.Parameters.AddWithValue("@ToDate", toDate);
                cmd.Parameters.AddWithValue("@Reason", reason);
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
            DataTable dt;

            using (SqlCommand cmd = new SqlCommand("Leave_ReadAll"))
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
            DataTable dt;

            using (SqlCommand cmd = new SqlCommand("Leave_ReadByID"))
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

        public static bool Update(int id,
                                  int internId,
                                  DateTime fromDate,
                                  DateTime toDate,
                                  string reason,
                                  string createdBy,
                                  DateTime createdDate,
                                  string modifiedBy,
                                  DateTime modifiedDate,
                                  bool isDeleted)
        {
            bool result = false;

            using (SqlCommand cmd = new SqlCommand("Leave_Update"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@InternId", internId);
                cmd.Parameters.AddWithValue("@FromDate", fromDate);
                cmd.Parameters.AddWithValue("@ToDate", toDate);
                cmd.Parameters.AddWithValue("@Reason", reason);
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

        public static bool Delete(int id)
        {
            bool result = false;

            using (SqlCommand cmd = new SqlCommand("Leave_Delete"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Id", id);
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