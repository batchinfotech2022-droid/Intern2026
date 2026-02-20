using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Register.BL
{
    public class Register
    {
        public static int Create(
            string userName, string password, string firstName, string lastName,
            string phone, string address,
            bool isSystemUser, bool isSystemAdmin, bool isSystemSupervisor,
            bool isActive, bool isLocked, int noAttempts,
            DateTime createdDate, string createdBy,
            DateTime modifiedDate, string modifiedBy, bool isDeleted)
        {
            return Register.Create(
                userName, password, firstName, lastName,
                phone, address,
                isSystemUser, isSystemAdmin, isSystemSupervisor,
                isActive, isLocked, noAttempts,
                createdDate, createdBy,
                modifiedDate, modifiedBy, isDeleted);
        }

        public static DataTable RetrieveAll()
        {
            return Register.RetrieveAll();
        }

        public static DataTable RetrieveById(int id)
        {
            return Register.RetrieveById(id);
        }

        public static bool Update(
            int id,
            string userName, string password, string firstName, string lastName,
            string phone, string address,
            bool isSystemUser, bool isSystemAdmin, bool isSystemSupervisor,
            bool isActive, bool isLocked, int noAttempts,
            DateTime modifiedDate, string modifiedBy)
        {
            return Register.Update(
                id,
                userName, password, firstName, lastName,
                phone, address,
                isSystemUser, isSystemAdmin, isSystemSupervisor,
                isActive, isLocked, noAttempts,
                modifiedDate, modifiedBy);
        }

        public static bool Delete(int id)
        {
            return Register.Delete(id);
        }
    }
}