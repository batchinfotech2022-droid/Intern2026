using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Internsapp.DL
{
    public partial class ActivityData
    {
        public static int Create(string username, string activityon, string activityitem, DateTime? activitydate, bool issuccess, string activitytext)
        {
            int returnValue;
            using (SqlCommand cmd = new SqlCommand("Activity_Create"))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add(new SqlParameter("@Activityid", SqlDbType.Int));

                cmd.Parameters["@Activityid"].Direction = ParameterDirection.Output;
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@Activityon", activityon);
                cmd.Parameters.AddWithValue("@Activityitem", activityitem);

                if (activitydate == null)
                    cmd.Parameters.AddWithValue("@Activitydate", DBNull.Value);
                else
                    cmd.Parameters.AddWithValue("@Activitydate", activitydate);

                cmd.Parameters.AddWithValue("@Issuccess", issuccess);
                cmd.Parameters.AddWithValue("@Activitytext", activitytext);

                returnValue = DataAccess.RunCmdOutput_int(cmd);
                cmd.Connection.Close();
                cmd.Connection.Dispose();
                cmd.Dispose();
                return returnValue;
            } //close using statement

        }

        public static DataTable RetrieveAll()
        {
            DataTable dt = null;

            using (SqlCommand cmd = new SqlCommand("Activity_ReadAll"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                DataSet dr = DataAccess.RunCMDGetDataSet(cmd);
                dt = dr.Tables[0];

                cmd.Connection.Close();
                cmd.Connection.Dispose();
                cmd.Dispose();
            } //close using statement

            return dt;
        }

        public static DataTable RetrieveById(int activityid)
        {
            DataTable dt = null;

            using (SqlCommand cmd = new SqlCommand("Activity_ReadById"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Activityid", activityid);
                DataSet dr = DataAccess.RunCMDGetDataSet(cmd);
                dt = dr.Tables[0];

                cmd.Connection.Close();
                cmd.Connection.Dispose();
                cmd.Dispose();
            } //close using statement 

            return dt;
        }

        public static Boolean Update(int activityid, string username, string activityon, string activityitem, DateTime? activitydate, bool issuccess, string activitytext)
        {
            bool result = false;

            using (SqlCommand cmd = new SqlCommand("Activity_Update"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Activityid", activityid);
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@Activityon", activityon);
                cmd.Parameters.AddWithValue("@Activityitem", activityitem);

                if (activitydate == null)
                    cmd.Parameters.AddWithValue("@Activitydate", DBNull.Value);
                else
                    cmd.Parameters.AddWithValue("@Activitydate", activitydate);

                cmd.Parameters.AddWithValue("@Issuccess", issuccess);
                cmd.Parameters.AddWithValue("@Activitytext", activitytext);
                cmd.Parameters.Add("@rowsAffected", SqlDbType.Int);

                cmd.Parameters["@rowsAffected"].Direction = ParameterDirection.ReturnValue;

                SqlDataReader r = DataAccess.RunCMDGetDataReader(cmd);

                if (cmd.Parameters["@rowsAffected"].Value.ToString() == "1") result = true;

                r.Close();

                cmd.Connection.Close();
                cmd.Connection.Dispose();
                cmd.Dispose();
            } //close using statement 

            return result;
        }

        public static Boolean Update(DataTable dt)
        {
            bool result = false;
            using (SqlCommand cmd = new SqlCommand("Activity_Update"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Activityid", dt.Rows[0].ItemArray[0]);
                cmd.Parameters.AddWithValue("@Username", dt.Rows[0].ItemArray[1]);
                cmd.Parameters.AddWithValue("@Activityon", dt.Rows[0].ItemArray[2]);
                cmd.Parameters.AddWithValue("@Activityitem", dt.Rows[0].ItemArray[3]);

                if (dt.Rows[0].ItemArray[4] == null)
                    cmd.Parameters.AddWithValue("@Activitydate", DBNull.Value);
                else
                    cmd.Parameters.AddWithValue("@Activitydate", dt.Rows[0].ItemArray[4]);

                cmd.Parameters.AddWithValue("@Issuccess", dt.Rows[0].ItemArray[5]);
                cmd.Parameters.AddWithValue("@Activitytext", dt.Rows[0].ItemArray[6]);
                cmd.Parameters.Add("@rowsAffected", SqlDbType.Int);

                cmd.Parameters["@rowsAffected"].Direction = ParameterDirection.ReturnValue;

                SqlDataReader r = DataAccess.RunCMDGetDataReader(cmd);

                if (cmd.Parameters["@rowsAffected"].Value.ToString() == "1") result = true;

                r.Close();

                cmd.Connection.Close();
                cmd.Connection.Dispose();
                cmd.Dispose();
            } //close using statement 

            return result;
        }

        public static Boolean Delete(int activityid)
        {
            bool result = false;

            using (SqlCommand cmd = new SqlCommand("Activity_Delete"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Activityid", activityid);
                cmd.Parameters.Add("@rowsAffected", SqlDbType.Int);
                cmd.Parameters["@rowsAffected"].Direction = ParameterDirection.ReturnValue;

                SqlDataReader r = DataAccess.RunCMDGetDataReader(cmd);

                if (cmd.Parameters["@rowsAffected"].Value.ToString() == "1") result = true;

                r.Close();

                cmd.Connection.Close();
                cmd.Connection.Dispose();
                cmd.Dispose();
            } //close using statement 

            return result;
        }


    } //Activity

}