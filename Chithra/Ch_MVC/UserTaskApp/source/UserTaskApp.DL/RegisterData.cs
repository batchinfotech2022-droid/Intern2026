using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Security.Policy;
using System.Text;
using System.Threading.Tasks;

namespace UserTaskApp.DL
{
    public class RegisterData
    {
    public static int Create(string UserName, string FirstName, string LastName, string Password, string Phone, string Address, bool IsSystemAdmin, bool IsSystemUser, bool IsSystemSupervisor, bool IsActive, bool IsLocked, int NoAttempts,string CreatedBy, DateTime CreatedDate, string ModifiedBy, DateTime ModifiedDate, bool IsDeleted,bool IsLogged)
        {
            int returnValue; using (SqlCommand cmd = new SqlCommand("User_Create"))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@Id", SqlDbType.Int));
                cmd.Parameters["@Id"].Direction = ParameterDirection.Output;
                cmd.Parameters.AddWithValue("@UserName", UserName);
                cmd.Parameters.AddWithValue("@FirstName", FirstName);
                cmd.Parameters.AddWithValue("@LastName", LastName);
                cmd.Parameters.AddWithValue("@Password", Password);
                cmd.Parameters.AddWithValue("@Phone", Phone);
                cmd.Parameters.AddWithValue("@Address", Address);
                cmd.Parameters.AddWithValue("@IsSystemAdmin", IsSystemAdmin);
                cmd.Parameters.AddWithValue("@IsSystemUser", IsSystemUser);
                cmd.Parameters.AddWithValue("@IsSystemSupervisor", IsSystemSupervisor);
                cmd.Parameters.AddWithValue("@IsActive", IsActive);
                cmd.Parameters.AddWithValue("@IsLocked", IsLocked);
                cmd.Parameters.AddWithValue("@NoAttempts", NoAttempts);
                cmd.Parameters.AddWithValue("@Createdby", CreatedBy);
                cmd.Parameters.AddWithValue("@Createddate", CreatedDate);
                cmd.Parameters.AddWithValue("@Modifiedby", ModifiedBy);
                cmd.Parameters.AddWithValue("@Modifieddate", ModifiedDate);
                cmd.Parameters.AddWithValue("@Isdeleted", IsDeleted);
                cmd.Parameters.AddWithValue("@IsLogged", IsLogged);
                returnValue = DataAccess.RunCmdOutput_int(cmd);
                cmd.Connection.Close();
                cmd.Connection.Dispose();
                cmd.Dispose(); return returnValue;
            }
        }
    public static DataTable RetrieveAll()
    {
        DataTable dt = null;
        using (SqlCommand cmd = new SqlCommand("User_ReadAll"))
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
        using (SqlCommand cmd = new SqlCommand("User_ReadById"))
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", id);
            DataSet dr = DataAccess.RunCMDGetDataSet(cmd);
            dt = dr.Tables[0]; cmd.Connection.Close();
            cmd.Connection.Dispose(); cmd.Dispose();
        }
        return dt;
    }
        public static DataTable RetrieveByUserName(string UserName) {
            
                DataTable dt = null;
                using (SqlCommand cmd = new SqlCommand("User_ReadByName"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@UserName", UserName);
                    DataSet dr = DataAccess.RunCMDGetDataSet(cmd);
                    dt = dr.Tables[0]; cmd.Connection.Close();
                    cmd.Connection.Dispose(); cmd.Dispose();
                }
                return dt;
            }
        

        public static Boolean Update(int Id, string UserName, string FirstName, string LastName, string Password, string Phone, string Address, bool IsSystemAdmin, bool IsSystemUser, bool IsSystemSupervisor, bool IsActive, bool IsLocked, int NoAttempts ,string CreatedBy, DateTime CreatedDate, string ModifiedBy, DateTime ModifiedDate, bool IsDeleted,bool IsLogged)

    {
        bool result = false; using (SqlCommand cmd = new SqlCommand("User_Update"))
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", Id);
            cmd.Parameters.AddWithValue("@UserName", UserName);
            cmd.Parameters.AddWithValue("@FirstName", FirstName);
            cmd.Parameters.AddWithValue("@LastName", LastName);
            cmd.Parameters.AddWithValue("@Password", Password);
            cmd.Parameters.AddWithValue("@Phone", Phone);
            cmd.Parameters.AddWithValue("@Address", Address);
            cmd.Parameters.AddWithValue("@IsSystemAdmin", IsSystemAdmin);
            cmd.Parameters.AddWithValue("@IsSystemUser", IsSystemUser);
            cmd.Parameters.AddWithValue("@IsSystemSupervisor", IsSystemSupervisor);
            cmd.Parameters.AddWithValue("@IsActive", IsActive);
            cmd.Parameters.AddWithValue("@IsLocked", IsLocked);
            cmd.Parameters.AddWithValue("@NoAttempts",NoAttempts);
            cmd.Parameters.AddWithValue("@Createdby", CreatedBy);
            cmd.Parameters.AddWithValue("@Createddate", CreatedDate);
            cmd.Parameters.AddWithValue("@Modifiedby", ModifiedBy);
            cmd.Parameters.AddWithValue("@Modifieddate", ModifiedDate);
            cmd.Parameters.AddWithValue("@Isdeleted", IsDeleted);
            cmd.Parameters.AddWithValue("@IsLogged", IsLogged);
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