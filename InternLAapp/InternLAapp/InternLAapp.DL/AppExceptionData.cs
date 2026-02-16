using System;
using System.Data;

namespace InternLAapp.DL
{
    public static class AppExceptionData
    {
        public static int Create(string exceptionsource, string exceptiondesc, DateTime? exceptiondate, bool issolved, string remarks)
        {
            return 0;
        }

        public static DataTable RetrieveAll()
        {
            return new DataTable();
        }

        public static DataTable ReadForSearch(string searchText)
        {
            return new DataTable();
        }

        public static DataTable RetrieveById(int exceptionid)
        {
            return new DataTable();
        }

        public static bool Update(int exceptionid, string exceptionsource, string exceptiondesc, DateTime? exceptiondate, bool issolved, string remarks)
        {
            return false;
        }

        public static bool Delete(int exceptionid)
        {
            return false;
        }

        public static void CreateXML(string xmlPath, string exceptionsource, string exceptiondesc, DateTime? exceptiondate, bool issolved, string remarks) { }
        public static void DeleteXMLRow(string xmlPath, int posIndex) { }
        public static DataTable getXMLRows(string xmlPath) { return new DataTable(); }
    }
}
