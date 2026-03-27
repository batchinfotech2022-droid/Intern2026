using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ContactManager.DL
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


        public static Boolean ToBool(this IDataReader reader, string DataBaseColumn)
        {
            return ToBool(reader, DataBaseColumn, false);
        }

        public static Boolean ToBool(this IDataReader reader, string DataBaseColumn, bool defaultValue)
        {
            if (reader[DataBaseColumn] != DBNull.Value)
                return bool.Parse(reader[DataBaseColumn].ToString());
            else
                return defaultValue;
        }


        public static int ToInt(this IDataReader reader, string DataBaseColumn)
        {
            if (reader[DataBaseColumn] != DBNull.Value)
            {
                return Convert.ToInt32(reader[DataBaseColumn]);
            }
            else
                return 0;
        }


        public static Decimal ToDecimal(this IDataReader reader, string DataBaseColumn)
        {
            if (reader[DataBaseColumn] != DBNull.Value)
            {
                return Convert.ToDecimal(reader[DataBaseColumn]);
            }
            else
                return 0;
        }


        public static DateTime ToDateTime(this IDataReader reader, string DataBaseColumn)
        {
            if (reader[DataBaseColumn] != DBNull.Value)
            {
                return Convert.ToDateTime(reader[DataBaseColumn]);
            }
            else
                return DateTime.MinValue;
        }


        public static DateTime? ToDateTimeNullable(this IDataReader reader, string DataBaseColumn)
        {
            if (reader[DataBaseColumn] != DBNull.Value)
            {
                return Convert.ToDateTime(reader[DataBaseColumn]);
            }
            else
                return null;
        }


        public static Char ToChar(this IDataReader reader, string DataBaseColumn)
        {
            if (reader[DataBaseColumn] != DBNull.Value)
                return Convert.ToChar(reader[DataBaseColumn]);
            else
                return ' ';
        }


        public static byte[] ToByte(this IDataReader reader, string DataBaseColumn)
        {
            byte[] bitContents = null;
            if (reader[DataBaseColumn] != DBNull.Value)
            {
                bitContents = (byte[])reader[DataBaseColumn];
            }
            return bitContents;
        }


        //This converts an integer DataBaseColumn to the given enum (T)
        public static T ToEnum<T>(this IDataReader reader, string DataBaseColumn)
        {
            if (!typeof(T).IsEnum)
            {
                throw new ArgumentException(typeof(T).ToString() + " is not an Enum");
            }
            return (T)Enum.ToObject(typeof(T), reader.ToInt(DataBaseColumn));
        }

    }  //DataReaderExtensions

} //Cmanager.DL 

