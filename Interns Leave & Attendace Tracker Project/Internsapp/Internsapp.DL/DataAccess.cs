using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Internsapp.DL
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

        public static int RunCmdOutput_int(SqlCommand cmd)
        {
            int result = 0;
            SqlParameter returnParam = GetOutputParameter(cmd.Parameters);

            if (cmd.Connection == null)
                cmd.Connection = new SqlConnection(ConnString);
            if (cmd.Connection.State == ConnectionState.Closed)
                cmd.Connection.Open();

            cmd.CommandType = CommandType.StoredProcedure;

            cmd.ExecuteNonQuery();

            if (returnParam != null)
                result = (returnParam.Value == DBNull.Value) ? 0 : Convert.ToInt32(returnParam.Value);

            cmd.Connection.Close();

            return result;
        }

        public static SqlDataReader RunCMDGetDataReader(SqlCommand cmd)
        {
            if (cmd.Connection == null)
                cmd.Connection = new SqlConnection(ConnString);
            if (cmd.Connection.State == ConnectionState.Closed)
                cmd.Connection.Open();

            cmd.CommandType = CommandType.StoredProcedure;

            return cmd.ExecuteReader(CommandBehavior.CloseConnection);
        }

        public static DataSet RunCMDGetDataSet(SqlCommand cmd)
        {
            DataSet result = new DataSet();

            if (cmd.Connection == null)
                cmd.Connection = new SqlConnection(ConnString);
            if (cmd.Connection.State == ConnectionState.Closed)
                cmd.Connection.Open();

            cmd.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(result);

            cmd.Connection.Close();

            return result;
        }

        private static SqlParameter GetOutputParameter(SqlParameterCollection sqlParameters)
        {
            SqlParameter returnParam = null;

            foreach (SqlParameter p in sqlParameters)
            {
                if (p.Direction == ParameterDirection.Output ||
                    p.Direction == ParameterDirection.InputOutput)
                {
                    returnParam = p;
                    break;
                }
            }

            return returnParam;
        }
    }
}
