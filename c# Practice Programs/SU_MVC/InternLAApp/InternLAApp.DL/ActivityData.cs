using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InternLAApp.DL
{
    public static class ActivityData
    {
        public static int Create(string username, string activityon, string activityitem, DateTime? activitydate, bool issuccess, string activitytext)
        {

            return 0;
        }

        public static DataTable RetrieveAll()
        {
            // TODO: return real data from DB
            return new DataTable();
        }

        public static DataTable RetrieveById(int activityid)
        {
            // TODO: return real data for given id
            return new DataTable();
        }

        public static bool Update(int activityid, string username, string activityon, string activityitem, DateTime? activitydate, bool issuccess, string activitytext)
        {
            // TODO: implement update
            return false;
        }

        public static bool Delete(int activityid)
        {
            // TODO: implement delete
            return false;
        }
    }
}
