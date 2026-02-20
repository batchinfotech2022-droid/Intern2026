using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TaskIssueTracker.DL
{
    public class DataAccess
    {
        private static string _connString;

        public static string ConnString
        {
            get
            {
                if (string.IsNullOrEmpty(_connString) && ConfigurationManager.ConnectionStrings.Count > 0)
                {
                    for (int i = 0; i < ConfigurationManager.ConnectionStrings.Count; i++)
                    {
                        if (ConfigurationManager.ConnectionStrings[i].Name.Contains("MainConnectionString"))
                        {
                            _connString = ConfigurationManager.ConnectionStrings[i].ConnectionString;
                        }
                    }
                }

                return _connString;
            }

            set { _connString = value; }
        }


        // Returns true if your stored procedure runs and returns no errors.
        public static bool RunActionCmdReturnBool(SqlCommand cmd)
        {
            bool result = false;

            SqlParameter returnParam = new SqlParameter("@RETURN_VALUE", SqlDbType.Int);
            returnParam.Direction = ParameterDirection.ReturnValue;
            cmd.Parameters.Add(returnParam);

            if (cmd.Connection == null)
                cmd.Connection = new SqlConnection(ConnString);
            if (cmd.Connection.State == ConnectionState.Closed)
                cmd.Connection.Open();

            using (SqlDataReader r = cmd.ExecuteReader(CommandBehavior.CloseConnection))
            {
                if (returnParam.Value == DBNull.Value)
                    result = false;
                else if (returnParam.Value.ToString() == "1")
                    result = true;
                else if (returnParam.Value != DBNull.Value)
                    bool.TryParse(returnParam.Value.ToString(), out result);
                r.Close();
            }
            return result;
        }

        // assumes that one of the parameterDirections is output or inputoutput.  
        // If there are more than one, it returns the first one.  If none, it returns 0.
        public static int RunCmdReturn_int(SqlCommand cmd)
        {
            int result = 0;
            SqlParameter returnParam = GetOutputParameter(cmd.Parameters);

            if (cmd.Connection == null)
                cmd.Connection = new SqlConnection(ConnString);
            if (cmd.Connection.State == ConnectionState.Closed)
                cmd.Connection.Open();

            int i = cmd.ExecuteNonQuery();
            if (returnParam != null)
                result = (returnParam.Value == DBNull.Value) ? 0 : (int)returnParam.Value;

            return result;
        }

        public static DateTime RunCmdOutput_Date(SqlCommand cmd)
        {
            DateTime result = DateTime.Today;
            SqlParameter returnParam = GetOutputParameter(cmd.Parameters);

            if (cmd.Connection == null)
                cmd.Connection = new SqlConnection(ConnString);
            if (cmd.Connection.State == ConnectionState.Closed)
                cmd.Connection.Open();

            int i = cmd.ExecuteNonQuery();
            if (returnParam != null)
                result = (returnParam.Value == DBNull.Value) ? DateTime.Today : Convert.ToDateTime(returnParam.Value);

            return result;
        }

        public static int RunCmdOutput_int(SqlCommand cmd)
        {
            int result = 0;
            SqlParameter returnParam = GetOutputParameter(cmd.Parameters);

            if (cmd.Connection == null)
                cmd.Connection = new SqlConnection(ConnString);
            if (cmd.Connection.State == ConnectionState.Closed)
                cmd.Connection.Open();

            int i = cmd.ExecuteNonQuery();
            if (returnParam != null)
                result = (returnParam.Value == DBNull.Value) ? 0 : Convert.ToInt32(returnParam.Value);

            return result;
        }

        private static SqlParameter GetOutputParameter(SqlParameterCollection sqlParameters)
        {
            SqlParameter returnParam = null;
            SqlParameter inoutParam = null;

            foreach (SqlParameter p in sqlParameters)
            {
                if (p.Direction == ParameterDirection.Output)
                    returnParam = p;
                if (p.Direction == ParameterDirection.InputOutput)
                    inoutParam = p;
            }

            //if the return parameter is not defined but there is an inputoutput parameter present, 
            if (returnParam == null && inoutParam != null)
                returnParam = inoutParam;

            return returnParam;
        }

        // assumes that the key DataBaseColumn's parameterDirection has been set to output
        public static Guid RunCmdReturn_Guid(SqlCommand cmd)
        {
            Guid result = new Guid();
            SqlParameter returnParam = GetOutputParameter(cmd.Parameters);

            if (cmd.Connection == null)
                cmd.Connection = new SqlConnection(ConnString);
            if (cmd.Connection.State == ConnectionState.Closed)
                cmd.Connection.Open();

            using (SqlDataReader r = cmd.ExecuteReader(CommandBehavior.CloseConnection))
            {
                if (returnParam != null && returnParam.Value != DBNull.Value)
                    result = (Guid)returnParam.Value;
                r.Close();
            }

            return result;
        }

        public static void RunActionCmd(SqlCommand cmd)
        {
            if (cmd.Connection == null)
                cmd.Connection = new SqlConnection(ConnString);
            if (cmd.Connection.State == ConnectionState.Closed)
                cmd.Connection.Open();
            cmd.ExecuteNonQuery();
        }

        public static SqlDataReader RunCMDGetDataReader(SqlCommand cmd)
        {
            SqlDataReader result;

            if (cmd.Connection == null)
                cmd.Connection = new SqlConnection(ConnString);
            if (cmd.Connection.State == ConnectionState.Closed)
                cmd.Connection.Open();
            try
            {
                result = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return result;
        }

        public static DataSet RunCMDGetDataSet(SqlCommand cmd)
        {
            DataSet result = new DataSet();

            if (cmd.Connection == null)
                cmd.Connection = new SqlConnection(ConnString);
            if (cmd.Connection.State == ConnectionState.Closed)
                cmd.Connection.Open();

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            da.Fill(result);
            return result;
        }

        // under construction
        public static string DLookup(SqlCommand cmd)
        {
            if (cmd.Connection == null)
                cmd.Connection = new SqlConnection(ConnString);
            if (cmd.Connection.State == ConnectionState.Closed)
                cmd.Connection.Open();

            string result = cmd.ExecuteScalar().ToString();

            return result;
        }

        // gets a string ready for insertion into database by replacing ' with ''
        public static string StringToDB(string s)
        {
            return StringToDB(s, SqlDbType.VarChar);
        }

        public static string StringToDB(string s, SqlDbType typ)
        {
            string result = s;

            switch (typ)
            {
                case SqlDbType.Bit:
                    if (s.ToLower() == "true" || s.ToLower() == "yes")
                        result = "1";
                    else
                        result = "0";
                    break;

                case SqlDbType.DateTime:
                case SqlDbType.Date:
                    if (s == DateTime.MinValue.ToString())
                        s = "Null";
                    break;

                case SqlDbType.UniqueIdentifier:
                    if (s == new Guid().ToString())
                        s = "Null";
                    break;

                default: //SqlDbType.VarChar | SqlDbType.Text 
                    result = s.Replace("'", "''");
                    break;
            }

            return result;
        }

    }  //DataAccess
} //
