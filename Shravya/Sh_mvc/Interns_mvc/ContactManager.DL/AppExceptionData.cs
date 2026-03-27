using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace ContactManager.DL
{
        public partial class AppExceptionData
        {
            public static int Create(string exceptionsource, string exceptiondesc, DateTime? exceptiondate, bool issolved, string remarks)
            {
                int returnValue;
                using (SqlCommand cmd = new SqlCommand("AppException_Create"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add(new SqlParameter("@Exceptionid", SqlDbType.Int));

                    cmd.Parameters["@Exceptionid"].Direction = ParameterDirection.Output;
                    cmd.Parameters.AddWithValue("@Exceptionsource", exceptionsource);
                    cmd.Parameters.AddWithValue("@Exceptiondesc", exceptiondesc);

                    if (exceptiondate == null)
                        cmd.Parameters.AddWithValue("@Exceptiondate", DBNull.Value);
                    else
                        cmd.Parameters.AddWithValue("@Exceptiondate", exceptiondate);

                    cmd.Parameters.AddWithValue("@Issolved", issolved);
                    cmd.Parameters.AddWithValue("@Remarks", remarks);

                    returnValue = DataAccess.RunCmdOutput_int(cmd);
                    cmd.Connection.Close();
                    cmd.Connection.Dispose();
                    cmd.Dispose();
                    return returnValue;
                } //close using statement

            }

            public static DataTable RetrieveAll()
            {
                DataTable dt = null;

                using (SqlCommand cmd = new SqlCommand("AppException_ReadAll"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    DataSet dr = DataAccess.RunCMDGetDataSet(cmd);
                    dt = dr.Tables[0];

                    cmd.Connection.Close();
                    cmd.Connection.Dispose();
                    cmd.Dispose();
                } //close using statement

                return dt;
            }


            public static DataTable ReadForSearch(string searchText)
            {

                DataTable dt = null;

                using (SqlCommand cmd = new SqlCommand("AppException_ReadForSearch"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@ExceptionSource", searchText);
                    DataSet dr = DataAccess.RunCMDGetDataSet(cmd);
                    dt = dr.Tables[0];

                    cmd.Connection.Close();
                    cmd.Connection.Dispose();
                    cmd.Dispose();
                } //close using statement

                return dt;
            }

            public static DataTable RetrieveById(int exceptionid)
            {
                DataTable dt = null;

                using (SqlCommand cmd = new SqlCommand("AppException_ReadById"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Exceptionid", exceptionid);
                    DataSet dr = DataAccess.RunCMDGetDataSet(cmd);
                    dt = dr.Tables[0];

                    cmd.Connection.Close();
                    cmd.Connection.Dispose();
                    cmd.Dispose();
                } //close using statement 

                return dt;
            }

            public static Boolean Update(int exceptionid, string exceptionsource, string exceptiondesc, DateTime? exceptiondate, bool issolved, string remarks)
            {
                bool result = false;

                using (SqlCommand cmd = new SqlCommand("AppException_Update"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Exceptionid", exceptionid);
                    cmd.Parameters.AddWithValue("@Exceptionsource", exceptionsource);
                    cmd.Parameters.AddWithValue("@Exceptiondesc", exceptiondesc);

                    if (exceptiondate == null)
                        cmd.Parameters.AddWithValue("@Exceptiondate", DBNull.Value);
                    else
                        cmd.Parameters.AddWithValue("@Exceptiondate", exceptiondate);

                    cmd.Parameters.AddWithValue("@Issolved", issolved);
                    cmd.Parameters.AddWithValue("@Remarks", remarks);
                    cmd.Parameters.Add("@rowsAffected", SqlDbType.Int);

                    cmd.Parameters["@rowsAffected"].Direction = ParameterDirection.ReturnValue;

                    SqlDataReader r = DataAccess.RunCMDGetDataReader(cmd);

                    if (cmd.Parameters["@rowsAffected"].Value.ToString() == "1") result = true;

                    r.Close();

                    cmd.Connection.Close();
                    cmd.Connection.Dispose();
                    cmd.Dispose();
                } //close using statement 

                return result;
            }

            public static Boolean Update(DataTable dt)
            {
                bool result = false;
                using (SqlCommand cmd = new SqlCommand("AppException_Update"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Exceptionid", dt.Rows[0].ItemArray[0]);
                    cmd.Parameters.AddWithValue("@Exceptionsource", dt.Rows[0].ItemArray[1]);
                    cmd.Parameters.AddWithValue("@Exceptiondesc", dt.Rows[0].ItemArray[2]);

                    if (dt.Rows[0].ItemArray[3] == null)
                        cmd.Parameters.AddWithValue("@Exceptiondate", DBNull.Value);
                    else
                        cmd.Parameters.AddWithValue("@Exceptiondate", dt.Rows[0].ItemArray[3]);

                    cmd.Parameters.AddWithValue("@Issolved", dt.Rows[0].ItemArray[4]);
                    cmd.Parameters.AddWithValue("@Remarks", dt.Rows[0].ItemArray[5]);
                    cmd.Parameters.Add("@rowsAffected", SqlDbType.Int);

                    cmd.Parameters["@rowsAffected"].Direction = ParameterDirection.ReturnValue;

                    SqlDataReader r = DataAccess.RunCMDGetDataReader(cmd);

                    if (cmd.Parameters["@rowsAffected"].Value.ToString() == "1") result = true;

                    r.Close();

                    cmd.Connection.Close();
                    cmd.Connection.Dispose();
                    cmd.Dispose();
                } //close using statement 

                return result;
            }

            public static Boolean Delete(int exceptionid)
            {
                bool result = false;

                using (SqlCommand cmd = new SqlCommand("AppException_Delete"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Exceptionid", exceptionid);
                    cmd.Parameters.Add("@rowsAffected", SqlDbType.Int);
                    cmd.Parameters["@rowsAffected"].Direction = ParameterDirection.ReturnValue;

                    SqlDataReader r = DataAccess.RunCMDGetDataReader(cmd);

                    if (cmd.Parameters["@rowsAffected"].Value.ToString() == "1") result = true;

                    r.Close();

                    cmd.Connection.Close();
                    cmd.Connection.Dispose();
                    cmd.Dispose();
                } //close using statement 

                return result;
            }



            public static DataTable getXMLRows(string xmlPath)
            {
                DataTable dt = null;
                DataSet ds = new DataSet();
                ds.ReadXml(xmlPath + "AppException.xml");
                dt = ds.Tables[0];
                return dt;
            }


            public static void DeleteXMLRow(string xmlPath, int posIndex)
            {
                DataSet ds = new DataSet();
                ds.ReadXml(xmlPath + "AppException.xml");
                ds.Tables[0].Rows.RemoveAt(posIndex);
                ds.WriteXml(xmlPath + "AppException.xml");
            }




            public static void CreateXML(string xmlPath, string exceptionsource, string exceptiondesc, DateTime? exceptiondate, bool issolved, string remarks)
            {
                XmlDocument xmldoc = new XmlDocument();
                xmldoc.Load(xmlPath + "AppException.xml");

                XmlElement parentelement = xmldoc.CreateElement("AppException");

                XmlElement xml_ExceptionID = xmldoc.CreateElement("ExceptionID");
                xml_ExceptionID.InnerText = "1";

                XmlElement xml_ExceptionSource = xmldoc.CreateElement("ExceptionSource");
                xml_ExceptionSource.InnerText = exceptionsource;

                XmlElement xml_ExceptionDesc = xmldoc.CreateElement("ExceptionDesc");
                xml_ExceptionDesc.InnerText = exceptiondesc;

                XmlElement xml_ExceptionDate = xmldoc.CreateElement("ExceptionDate");
                xml_ExceptionDate.InnerText = exceptiondate.ToString();

                XmlElement xml_IsSolved = xmldoc.CreateElement("IsSolved");
                xml_IsSolved.InnerText = issolved.ToString();

                XmlElement xml_Remarks = xmldoc.CreateElement("Remarks");
                xml_Remarks.InnerText = remarks;

                parentelement.AppendChild(xml_ExceptionID);
                parentelement.AppendChild(xml_ExceptionSource);
                parentelement.AppendChild(xml_ExceptionDesc);
                parentelement.AppendChild(xml_ExceptionDate);
                parentelement.AppendChild(xml_IsSolved);
                parentelement.AppendChild(xml_Remarks);

                xmldoc.DocumentElement.AppendChild(parentelement);

                xmldoc.Save(xmlPath + "AppException.xml");

            }



        } //AppException

    } //ContactManger.DL



