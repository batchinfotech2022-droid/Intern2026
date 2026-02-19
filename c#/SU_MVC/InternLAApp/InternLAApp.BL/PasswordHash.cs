using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace InternLAApp.BL
{
    public class PasswordHash
    {
        const int SaltSize = 16, HashSize = 20, HashIter = 10000;

        public static string GenerateHash(string password)
        {
            byte[] buf = new byte[SaltSize];
            new RNGCryptoServiceProvider().GetBytes(buf);
            string salt = Convert.ToBase64String(buf);

            Rfc2898DeriveBytes deriver2898 = new Rfc2898DeriveBytes(password.Trim(), buf, HashIter);
            return salt + ':' + Convert.ToBase64String(deriver2898.GetBytes(HashSize));
        }

        public static bool VerifyPassword(string password, string saltHash)
        {
            //bool result = false;
            string[] parts = saltHash.Split(new[] { ':' }, StringSplitOptions.RemoveEmptyEntries);
            if (parts.Length != 2)
                return false;
            byte[] buf = Convert.FromBase64String(parts[0]);
            Rfc2898DeriveBytes deriver2898 = new Rfc2898DeriveBytes(password.Trim(), buf, HashIter);
            string computedHash = Convert.ToBase64String(deriver2898.GetBytes(HashSize));
            return parts[1].Equals(computedHash);
        }
        //if (parts[1].Equals(computedHash))
        //{
        //    result = true;
        //}
        //return parts[1].Equals(computedHash);

        public static bool isHashedPassword(string password)
        {
            string[] parts = password.Split(new[] { ':' }, StringSplitOptions.RemoveEmptyEntries);
            if (parts.Length != 2)
                return false;

            try
            {
                byte[] buf = Convert.FromBase64String(parts[0]);
                Rfc2898DeriveBytes deriver2898 = new Rfc2898DeriveBytes(password.Trim(), buf, HashIter);
                return true;
            }
            catch
            {
                return false;
            }

        }

    }
}