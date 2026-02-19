using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BiSchool.DL;
using System.Data;
using System.Data.SqlClient;


namespace BiSchool.BL
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

            #endregion

            #region Properties

            public int Activityid { get { return _activityid; } set { _activityid = value; } }
            public string Username { get { return _username; } set { _username = value; } }
            public string Activityon { get { return _activityon; } set { _activityon = value; } }
            public string Activityitem { get { return _activityitem; } set { _activityitem = value; } }
            public DateTime? Activitydate { get { return _activitydate; } set { _activitydate = value; } }
            public bool Issuccess { get { return _issuccess; } set { _issuccess = value; } }
            public string Activitytext { get { return _activitytext; } set { _activitytext = value; } }

            #endregion

            #region Constructors

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

            public Activity(int activityid, string username, string activityon,
                            string activityitem, DateTime? activitydate,
                            bool issuccess, string activitytext)
            {
                _activityid = activityid;
                _username = username;
                _activityon = activityon;
                _activityitem = activityitem;
                _activitydate = activitydate;
                _issuccess = issuccess;
                _activitytext = activitytext;
            }

            #endregion

            #region CRUD

            public static int Create(string username,
                                     string activityon,
                                     string activityitem,
                                     DateTime? activitydate,
                                     bool issuccess,
                                     string activitytext)
            {
                try
                {
                    return ActivityData.Create(username, activityon,
                                               activityitem, activitydate,
                                               issuccess, activitytext);
                }
                catch (Exception ex)
                {
                    AppExceptionData.Create("Activity",
                                            ex.Message,
                                            DateTime.Now,
                                            false,
                                            "Create Failed");
                    return -1;
                }
            }

            public static List<Activity> RetrieveAll()
            {
                List<Activity> activityList = new List<Activity>();

                try
                {
                    DataTable dt = ActivityData.RetrieveAll();
                    DataTableReader r = dt.CreateDataReader();

                    while (r.Read())
                        activityList.Add(ConvertReaderToObject(r));

                    r.Close();
                    dt.Dispose();
                }
                catch (Exception ex)
                {
                    AppExceptionData.Create("Activity",
                                            ex.Message,
                                            DateTime.Now,
                                            false,
                                            "RetrieveAll Failed");
                }

                return activityList;
            }

            public static Activity RetrieveById(int activityid)
            {
                Activity result = null;

                try
                {
                    DataTable dt = ActivityData.RetrieveById(activityid);
                    DataTableReader r = dt.CreateDataReader();

                    if (r.Read())
                        result = ConvertReaderToObject(r);

                    r.Close();
                    dt.Dispose();
                }
                catch (Exception ex)
                {
                    AppExceptionData.Create("Activity",
                                            ex.Message,
                                            DateTime.Now,
                                            false,
                                            "RetrieveById Failed");
                }

                return result;
            }

            public bool Update()
            {
                try
                {
                    return ActivityData.Update(Activityid,
                                               Username,
                                               Activityon,
                                               Activityitem,
                                               Activitydate,
                                               Issuccess,
                                               Activitytext);
                }
                catch (Exception ex)
                {
                    AppExceptionData.Create("Activity",
                                            ex.Message,
                                            DateTime.Now,
                                            false,
                                            "Update Failed");
                    return false;
                }
            }

            public static bool Delete(int activityid)
            {
                try
                {
                    return ActivityData.Delete(activityid);
                }
                catch (Exception ex)
                {
                    AppExceptionData.Create("Activity",
                                            ex.Message,
                                            DateTime.Now,
                                            false,
                                            "Delete Failed");
                    return false;
                }
            }

            #endregion

            #region Convert Reader

            private static Activity ConvertReaderToObject(DataTableReader r)
            {
                return new Activity(
                    r.ToInt("Activityid"),
                    r.ToString("Username"),
                    r.ToString("Activityon"),
                    r.ToString("Activityitem"),
                    r.ToDateTimeNullable("Activitydate"),
                    r.ToBool("Issuccess"),
                    r.ToString("Activitytext")
                );
            }

            #endregion
        }
    }

