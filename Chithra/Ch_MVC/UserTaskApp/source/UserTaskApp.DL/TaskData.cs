using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UserTaskApp.DL;
namespace UserTaskApp.DL
{
    public class TaskData
    {
        public static int Create(string title, string description, string assignedTo, string status, string CreatedBy, DateTime CreatedDate, string ModifiedBy, DateTime ModifiedDate, bool IsDeleted)
        {
            int returnValue; using (SqlCommand cmd = new SqlCommand("TASK_Create"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@Id", SqlDbType.Int));
                cmd.Parameters["@Id"].Direction = ParameterDirection.Output;
                cmd.Parameters.AddWithValue("@Title", title);
                cmd.Parameters.AddWithValue("@Description", description);
                cmd.Parameters.AddWithValue("@AssignedTo", assignedTo);
                cmd.Parameters.AddWithValue("@Status", status);
                cmd.Parameters.AddWithValue("@Createdby", CreatedBy);
                cmd.Parameters.AddWithValue("@Createddate", CreatedDate);
                cmd.Parameters.AddWithValue("@Modifiedby", ModifiedBy);
                cmd.Parameters.AddWithValue("@Modifieddate", ModifiedDate);
                cmd.Parameters.AddWithValue("@Isdeleted", IsDeleted);
                returnValue = DataAccess.RunCmdOutput_int(cmd);
                cmd.Connection.Close();
                cmd.Connection.Dispose();
                cmd.Dispose(); return returnValue;
            }
        }
        public static DataTable RetrieveAll()
        {
            DataTable dt = null;
            using (SqlCommand cmd = new SqlCommand("TASK_ReadAll"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                DataSet dr = DataAccess.RunCMDGetDataSet(cmd);
                dt = dr.Tables[0];
                cmd.Connection.Close();
                cmd.Connection.Dispose(); cmd.Dispose(); 
}
            return dt;
        }
        public static DataTable RetrieveById(int id)
        {
            DataTable dt = null;
            using (SqlCommand cmd = new SqlCommand("TASK_ReadById"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);
                DataSet dr = DataAccess.RunCMDGetDataSet(cmd);
                dt = dr.Tables[0]; cmd.Connection.Close();
                cmd.Connection.Dispose(); cmd.Dispose();
            }
            return dt;
        }
        public static Boolean Update(int id, string title, string description, string assignedTo, string status, string CreatedBy, DateTime CreatedDate, string ModifiedBy, DateTime ModifiedDate, bool IsDeleted)

        {
            bool result = false; using (SqlCommand cmd = new SqlCommand("TASK_Update"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id); 
                cmd.Parameters.AddWithValue("@Title", title); 
                cmd.Parameters.AddWithValue("@Description", description); 
                
                cmd.Parameters.AddWithValue("@AssignedTo", assignedTo); 
                cmd.Parameters.AddWithValue("@Status", status); 
                cmd.Parameters.AddWithValue("@Createdby", CreatedBy);
                cmd.Parameters.AddWithValue("@Createddate", CreatedDate); 
                cmd.Parameters.AddWithValue("@Modifiedby", ModifiedBy);
                cmd.Parameters.AddWithValue("@Modifieddate", ModifiedDate);
                cmd.Parameters.AddWithValue("@Isdeleted", IsDeleted); 
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
            using (SqlCommand cmd = new SqlCommand("TASK_Delete")) 
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
                cmd.Dispose(); } 
            return result; 
        } 
    } 
}