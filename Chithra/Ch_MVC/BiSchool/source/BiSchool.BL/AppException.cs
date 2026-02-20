using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BiSchool.DL;

namespace BiSchool.BL
{
    public partial class AppException
    {

        #region Fields

        private int _exceptionid;
        private string _exceptionsource;
        private string _exceptiondesc;
        private DateTime? _exceptiondate;
        private bool _issolved;
        private string _remarks;

        #endregion //Fields


        #region Props


        public int Exceptionid { get { return _exceptionid; } set { _exceptionid = value; } }

        public string Exceptionsource { get { return _exceptionsource; } set { _exceptionsource = value; } }

        public string Exceptiondesc { get { return _exceptiondesc; } set { _exceptiondesc = value; } }

        public DateTime? Exceptiondate { get { return _exceptiondate; } set { _exceptiondate = value; } }

        public bool Issolved { get { return _issolved; } set { _issolved = value; } }

        public string Remarks { get { return _remarks; } set { _remarks = value; } }

        #endregion //Props


        #region CTOR

        public AppException()
        {
            _exceptionid = 0;
            _exceptionsource = "";
            _exceptiondesc = "";
            _exceptiondate = null;
            _issolved = false;
            _remarks = "";
        }

        public AppException(int exceptionid, string exceptionsource, string exceptiondesc, DateTime? exceptiondate, bool issolved, string remarks)
        {
            _exceptionid = exceptionid;
            _exceptionsource = exceptionsource;
            _exceptiondesc = exceptiondesc;
            _exceptiondate = exceptiondate;
            _issolved = issolved;
            _remarks = remarks;
        }

        #endregion //CTOR


        #region CRUD

        public static int Create(string exceptionsource, string exceptiondesc, DateTime? exceptiondate, bool issolved, string remarks)
        {

            try
            {
                int res = AppExceptionData.Create(exceptionsource, exceptiondesc, exceptiondate, issolved, remarks);
                return res;
            }
            catch (Exception ex)
            {
                throw new Exception("Exception insertion failed", ex);
            }

        }

        public static List<AppException> RetrieveAll()
        {
            List<AppException> appexceptionlist = new List<AppException>();
            try
            {
                DataTable dt = AppExceptionData.RetrieveAll();
                DataTableReader r = dt.CreateDataReader();
                while (r.Read())
                    appexceptionlist.Add(convertReaderToObject(r));
                r.Close();
                dt.Dispose();
            }
            catch (Exception ex)
            {
                throw new Exception("RetrieveAll failed", ex);
            }

            return appexceptionlist;
        }

        public static List<AppException> ReadForSearch(string searchText)
        {
            List<AppException> appexceptionlist = new List<AppException>();
            try
            {
                DataTable dt = AppExceptionData.ReadForSearch(searchText);
                DataTableReader r = dt.CreateDataReader();
                while (r.Read())
                    appexceptionlist.Add(convertReaderToObject(r));
                r.Close();
                dt.Dispose();
            }
            catch (Exception ex)
            {
                throw new Exception("ReadForSearch failed", ex);
            }

            return appexceptionlist;
        }


        public static AppException RetrieveById(int exceptionid)
        {
            AppException result = null;
            try
            {
                DataTable dt = AppExceptionData.RetrieveById(exceptionid);
                DataTableReader r = dt.CreateDataReader();
                if (r.Read())
                    result = convertReaderToObject(r);
                r.Close();
                dt.Dispose();
                return result;
            }
            catch (Exception ex)
            {
                throw new Exception("RetrieveById failed", ex);
            }

        }

        public bool Update()
        {
            try
            {
                bool returnVal = AppExceptionData.Update(Exceptionid, Exceptionsource, Exceptiondesc, Exceptiondate, Issolved, Remarks);
                return returnVal;
            }
            catch (Exception ex)
            {
                throw new Exception("Update failed", ex);
            }

        }


        public static bool Delete(int exceptionidValue)
        {
            try
            {
                bool returnVal = AppExceptionData.Delete(exceptionidValue);
                return returnVal;
            }
            catch (Exception ex)
            {
                throw new Exception("Delete failed", ex);
            }

        }

        public bool Delete()
        {
            try
            {
                bool returnVal = AppExceptionData.Delete(this.Exceptionid);
                return returnVal;
            }
            catch (Exception ex)
            {
                throw new Exception("Delete failed", ex);
            }

        }


        #endregion //CRUD

        public static void CreateXML(string xmlPath, string exceptionsource, string exceptiondesc, DateTime? exceptiondate, bool issolved, string remarks)
        {
            try
            {
                AppExceptionData.CreateXML(xmlPath, exceptionsource, exceptiondesc, exceptiondate, issolved, remarks);
            }
            catch (Exception )
            {
            }
        }

        public static void DeleteXMLRow(string xmlPath, int posIndex)
        {
            AppExceptionData.DeleteXMLRow(xmlPath, posIndex);
        }


        public static List<AppException> getXMLRows(string xmlPath)
        {
            List<AppException> appexceptionlist = new List<AppException>();
            try
            {
                DataTable dt = AppExceptionData.getXMLRows(xmlPath);
                DataTableReader r = dt.CreateDataReader();
                while (r.Read())
                    appexceptionlist.Add(convertReaderToObject(r));
                r.Close();
                dt.Dispose();
            }
            catch (Exception )
            {
                //throw new DLException("GetXML failed", ex);
            }

            return appexceptionlist;
        }



        public static List<AppException> FilteredRead(bool isSolved)
        {
            List<AppException> appexceptionlist = new List<AppException>();
            try
            {
                DataTable dt = AppExceptionData.RetrieveAll();
                DataTableReader r = dt.CreateDataReader();
                while (r.Read())
                {
                    if ((bool)r["isSolved"] == isSolved)
                        appexceptionlist.Add(convertReaderToObject(r));
                }
                r.Close();
                dt.Dispose();
            }
            catch (Exception )
            {
                throw new Exception("Retrieve failed");
            }

            return appexceptionlist;
        }


        private static AppException convertReaderToObject(DataTableReader r)
        {
            return new AppException(r.ToInt("Exceptionid")
                , r.ToString("Exceptionsource")
                , r.ToString("Exceptiondesc")
                , r.ToDateTimeNullable("Exceptiondate")
                , r.ToBool("Issolved")
                , r.ToString("Remarks"));
        }


    } //AppException

} //SanYeshOfficeApp.BL
