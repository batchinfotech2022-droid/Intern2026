using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Internsapp.DL
{
    public partial class AppExceptionData
    {
        public static int Create(string exceptionsource,
                                 string exceptiondesc,
                                 DateTime? exceptiondate,
                                 bool issolved,
                                 string remarks)
        {
            int returnValue;

            using (SqlCommand cmd = new SqlCommand("AppException_Create"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(new SqlParameter("@Exceptionid", SqlDbType.Int));
                cmd.Parameters["@Exceptionid"].Direction = ParameterDirection.Output;

                cmd.Parameters.AddWithValue("@Exceptionsource", exceptionsource);
                cmd.Parameters.AddWithValue("@Exceptiondesc", exceptiondesc);

                if (exceptiondate == null)
                    cmd.Parameters.AddWithValue("@Exceptiondate", DBNull.Value);
                else
                    cmd.Parameters.AddWithValue("@Exceptiondate", exceptiondate);

                cmd.Parameters.AddWithValue("@Issolved", issolved);
                cmd.Parameters.AddWithValue("@Remarks", remarks);

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

            using (SqlCommand cmd = new SqlCommand("AppException_ReadAll"))
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

        public static DataTable RetrieveById(int exceptionid)
        {
            DataTable dt = null;

            using (SqlCommand cmd = new SqlCommand("AppException_ReadById"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Exceptionid", exceptionid);

                DataSet ds = DataAccess.RunCMDGetDataSet(cmd);
                dt = ds.Tables[0];

                cmd.Connection.Close();
                cmd.Connection.Dispose();
                cmd.Dispose();
            }

            return dt;
        }

        public static Boolean Update(int exceptionid,
                                     string exceptionsource,
                                     string exceptiondesc,
                                     DateTime? exceptiondate,
                                     bool issolved,
                                     string remarks)
        {
            bool result = false;

            using (SqlCommand cmd = new SqlCommand("AppException_Update"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Exceptionid", exceptionid);
                cmd.Parameters.AddWithValue("@Exceptionsource", exceptionsource);
                cmd.Parameters.AddWithValue("@Exceptiondesc", exceptiondesc);

                if (exceptiondate == null)
                    cmd.Parameters.AddWithValue("@Exceptiondate", DBNull.Value);
                else
                    cmd.Parameters.AddWithValue("@Exceptiondate", exceptiondate);

                cmd.Parameters.AddWithValue("@Issolved", issolved);
                cmd.Parameters.AddWithValue("@Remarks", remarks);

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

        public static Boolean Delete(int exceptionid)
        {
            bool result = false;

            using (SqlCommand cmd = new SqlCommand("AppException_Delete"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Exceptionid", exceptionid);

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


