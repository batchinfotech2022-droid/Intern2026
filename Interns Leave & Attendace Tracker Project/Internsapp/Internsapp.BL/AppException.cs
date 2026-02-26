using Internsapp.DL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Internsapp.BL
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

        #endregion

        #region Properties

        public int Exceptionid { get { return _exceptionid; } set { _exceptionid = value; } }
        public string Exceptionsource { get { return _exceptionsource; } set { _exceptionsource = value; } }
        public string Exceptiondesc { get { return _exceptiondesc; } set { _exceptiondesc = value; } }
        public DateTime? Exceptiondate { get { return _exceptiondate; } set { _exceptiondate = value; } }
        public bool Issolved { get { return _issolved; } set { _issolved = value; } }
        public string Remarks { get { return _remarks; } set { _remarks = value; } }

        #endregion

        #region Constructor

        public AppException()
        {
            _exceptionid = 0;
            _exceptionsource = "";
            _exceptiondesc = "";
            _exceptiondate = null;
            _issolved = false;
            _remarks = "";
        }

        public AppException(int exceptionid,
                            string exceptionsource,
                            string exceptiondesc,
                            DateTime? exceptiondate,
                            bool issolved,
                            string remarks)
        {
            _exceptionid = exceptionid;
            _exceptionsource = exceptionsource;
            _exceptiondesc = exceptiondesc;
            _exceptiondate = exceptiondate;
            _issolved = issolved;
            _remarks = remarks;
        }

        #endregion

        #region CRUD

        public static int Create(string exceptionsource,
                                 string exceptiondesc,
                                 DateTime? exceptiondate,
                                 bool issolved,
                                 string remarks)
        {
            try
            {
                return AppExceptionData.Create(exceptionsource,
                                               exceptiondesc,
                                               exceptiondate,
                                               issolved,
                                               remarks);
            }
            catch (Exception )
            {
                return -1;
            }
        }

        public static List<AppException> RetrieveAll()
        {
            List<AppException> list = new List<AppException>();

            try
            {
                DataTable dt = AppExceptionData.RetrieveAll();
                DataTableReader r = dt.CreateDataReader();

                while (r.Read())
                    list.Add(ConvertReaderToObject(r));

                r.Close();
                dt.Dispose();
            }
            catch (Exception)
            {
            }

            return list;
        }

        public static AppException RetrieveById(int exceptionid)
        {
            AppException result = null;

            try
            {
                DataTable dt = AppExceptionData.RetrieveById(exceptionid);
                DataTableReader r = dt.CreateDataReader();

                if (r.Read())
                    result = ConvertReaderToObject(r);

                r.Close();
                dt.Dispose();
            }
            catch (Exception)
            {
            }

            return result;
        }

        public bool Update()
        {
            try
            {
                return AppExceptionData.Update(Exceptionid,
                                               Exceptionsource,
                                               Exceptiondesc,
                                               Exceptiondate,
                                               Issolved,
                                               Remarks);
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static bool Delete(int exceptionid)
        {
            try
            {
                return AppExceptionData.Delete(exceptionid);
            }
            catch (Exception)
            {
                return false;
            }
        }

        #endregion

        #region XML Methods

        //public static void CreateXML(string xmlPath,
        //                             string exceptionsource,
        //                             string exceptiondesc,
        //                             DateTime? exceptiondate,
        //                             bool issolved,
        //                             string remarks)
        //{
        //    AppExceptionData.CreateXML(xmlPath,
        //                               exceptionsource,
        //                               exceptiondesc,
        //                               exceptiondate,
        //                               issolved,
        //                               remarks);
        //}

        //public static void DeleteXMLRow(string xmlPath, int posIndex)
        //{
        //    AppExceptionData.DeleteXMLRow(xmlPath, posIndex);
        //}

        //public static List<AppException> GetXMLRows(string xmlPath)
        //{
        //    List<AppException> list = new List<AppException>();

        //    try
        //    {
        //        DataTable dt = AppExceptionData.getXMLRows(xmlPath);
        //        DataTableReader r = dt.CreateDataReader();

        //        while (r.Read())
        //            list.Add(ConvertReaderToObject(r));

        //        r.Close();
        //        dt.Dispose();
        //    }
        //    catch (Exception)
        //    {
        //    }

        //    return list;
        //}

        #endregion

        #region Convert Reader

        private static AppException ConvertReaderToObject(DataTableReader r)
        {
            return new AppException(
                r.ToInt("Exceptionid"),
                r.ToString("Exceptionsource"),
                r.ToString("Exceptiondesc"),
                r.ToDateTimeNullable("Exceptiondate"),
                r.ToBool("Issolved"),
                r.ToString("Remarks")
            );
        }

        #endregion
    }
}


