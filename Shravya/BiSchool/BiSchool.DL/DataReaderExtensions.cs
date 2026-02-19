using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;


namespace BiSchool.DL
{
        public static class DataReaderExtensions
        {
            public static string ToString(this IDataReader reader, string DataBaseColumn)
            {
                if (reader[DataBaseColumn] != DBNull.Value)
                    return reader[DataBaseColumn].ToString();
                else
                    return "";
            }

            public static bool ToBool(this IDataReader reader, string DataBaseColumn)
            {
                return ToBool(reader, DataBaseColumn, false);
            }

            public static bool ToBool(this IDataReader reader, string DataBaseColumn, bool defaultValue)
            {
                if (reader[DataBaseColumn] != DBNull.Value)
                    return bool.Parse(reader[DataBaseColumn].ToString());
                else
                    return defaultValue;
            }

            public static int ToInt(this IDataReader reader, string DataBaseColumn)
            {
                if (reader[DataBaseColumn] != DBNull.Value)
                    return Convert.ToInt32(reader[DataBaseColumn]);
                else
                    return 0;
            }

            public static decimal ToDecimal(this IDataReader reader, string DataBaseColumn)
            {
                if (reader[DataBaseColumn] != DBNull.Value)
                    return Convert.ToDecimal(reader[DataBaseColumn]);
                else
                    return 0;
            }

            public static DateTime ToDateTime(this IDataReader reader, string DataBaseColumn)
            {
                if (reader[DataBaseColumn] != DBNull.Value)
                    return Convert.ToDateTime(reader[DataBaseColumn]);
                else
                    return DateTime.MinValue;
            }

            public static DateTime? ToDateTimeNullable(this IDataReader reader, string DataBaseColumn)
            {
                if (reader[DataBaseColumn] != DBNull.Value)
                    return Convert.ToDateTime(reader[DataBaseColumn]);
                else
                    return null;
            }

            public static char ToChar(this IDataReader reader, string DataBaseColumn)
            {
                if (reader[DataBaseColumn] != DBNull.Value)
                    return Convert.ToChar(reader[DataBaseColumn]);
                else
                    return ' ';
            }

            public static byte[] ToByte(this IDataReader reader, string DataBaseColumn)
            {
                if (reader[DataBaseColumn] != DBNull.Value)
                    return (byte[])reader[DataBaseColumn];
                else
                    return null;
            }

            public static T ToEnum<T>(this IDataReader reader, string DataBaseColumn)
            {
                if (!typeof(T).IsEnum)
                    throw new ArgumentException(typeof(T).ToString() + " is not an Enum");

                return (T)Enum.ToObject(typeof(T), reader.ToInt(DataBaseColumn));
            }
        }
    }

