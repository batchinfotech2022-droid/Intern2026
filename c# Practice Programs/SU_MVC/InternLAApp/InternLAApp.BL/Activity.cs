using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using InternLAApp.DL;

namespace InternLAApp.BL
{
    public class Activity
    {

        #region Fields

        private int _activityid;
        private string _username;
        private string _activityon;
        private string _activityitem;
        private DateTime? _activitydate;
        private bool _issuccess;
        private string _activitytext;

        #endregion //Fields


        #region Props


        public int Activityid { get { return _activityid; } set { _activityid = value; } }

        public string Username { get { return _username; } set { _username = value; } }

        public string Activityon { get { return _activityon; } set { _activityon = value; } }

        public string Activityitem { get { return _activityitem; } set { _activityitem = value; } }

        public DateTime? Activitydate { get { return _activitydate; } set { _activitydate = value; } }

        public bool Issuccess { get { return _issuccess; } set { _issuccess = value; } }

        public string Activitytext { get { return _activitytext; } set { _activitytext = value; } }

        #endregion //Props


        #region CTOR

        public Activity()
        {
            _activityid = 0;
            _username = "";
            _activityon = "";
            _activityitem = "";
            _activitydate = null;
            _issuccess = false;
            _activitytext = "";
        }

        public Activity(int activityid, string username, string activityon, string activityitem, DateTime? activitydate, bool issuccess, string activitytext)
        {
            _activityid = activityid;
            _username = username;
            _activityon = activityon;
            _activityitem = activityitem;
            _activitydate = activitydate;
            _issuccess = issuccess;
            _activitytext = activitytext;
        }

        #endregion //CTOR


        #region CRUD

        public static int Create(string username, string activityon, string activityitem, DateTime? activitydate, bool issuccess, string activitytext)
        {

            try
            {
                int res = ActivityData.Create(username, activityon, activityitem, activitydate, issuccess, activitytext);
                return res;
            }
            catch (Exception ex)
            {
                AppExceptionData.Create("Activity", ex.Message.ToString(), DateTime.Now, false, "InsertRow ");
                return -10;
            }

        }

        public static List<Activity> RetrieveAll()
        {
            List<Activity> activitylist = new List<Activity>();
            try
            {
                DataTable dt = ActivityData.RetrieveAll();
                DataTableReader r = dt.CreateDataReader();
                while (r.Read())
                    activitylist.Add(convertReaderToObject(r));
                r.Close();
                dt.Dispose();
            }
            catch (Exception)
            {
                throw;
            }

            return activitylist;
        }


        public static Activity RetrieveById(int activityid)
        {
            Activity result = null;
            try
            {
                DataTable dt = ActivityData.RetrieveById(activityid);
                DataTableReader r = dt.CreateDataReader();
                if (r.Read())
                    result = convertReaderToObject(r);
                r.Close();
                dt.Dispose();
                return result;
            }
            catch (Exception)
            {
                throw;
            }

        }

        public bool Update()
        {
            try
            {
                bool returnVal = ActivityData.Update(Activityid, Username, Activityon, Activityitem, Activitydate, Issuccess, Activitytext);
                return returnVal;
            }
            catch (Exception)
            {
                throw;
            }

        }


        public static bool Delete(int activityidValue)
        {
            try
            {
                bool returnVal = ActivityData.Delete(activityidValue);
                return returnVal;
            }
            catch (Exception)
            {
                throw;
            }

        }

        public bool Delete()
        {
            try
            {
                bool returnVal = ActivityData.Delete(this.Activityid);
                return returnVal;
            }
            catch (Exception)
            {
                throw;
            }

        }


        #endregion //CRUD

        private static Activity convertReaderToObject(DataTableReader r)
        {
            return new Activity(r.ToInt("Activityid")
                , r.ToString("Username")
                , r.ToString("Activityon")
                , r.ToString("Activityitem")
                , r.ToDateTimeNullable("Activitydate")
                , r.ToBool("Issuccess")
                , r.ToString("Activitytext"));
        }


    } //Activity

}