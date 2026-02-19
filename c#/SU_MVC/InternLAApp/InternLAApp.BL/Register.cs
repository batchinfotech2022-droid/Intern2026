using System;
using System.Collections.Generic;
using System.Data;
using InternLAApp.DL;

namespace InternLAApp.BL
{
    public class Register
    {
        public int Id { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public bool IsSystemUser { get; set; }
        public bool IsSystemAdmin { get; set; }
        public bool IsSystemSupervisor { get; set; }
        public bool IsActive { get; set; }
        public bool IsLocked { get; set; }

        public static int Create(string username, string password,
                                 string firstname, string lastname,
                                 string phone, string address,
                                 bool isSystemUser, bool isSystemAdmin,
                                 bool isSystemSupervisor, bool isActive,
                                 bool isLocked)
        {
            return RegisterData.Create(username, password,
                                       firstname, lastname,
                                       phone, address,
                                       isSystemUser, isSystemAdmin,
                                       isSystemSupervisor, isActive,
                                       isLocked);
        }

        public static int Update(int id, string username, string password,
                                 string firstname, string lastname,
                                 string phone, string address,
                                 bool isSystemUser, bool isSystemAdmin,
                                 bool isSystemSupervisor, bool isActive,
                                 bool isLocked)
        {
            //return RegisterData.Update(id, username, password,
            //                           firstname, lastname,
            //                           phone, address,
            //                           isSystemUser, isSystemAdmin,
            //                           isSystemSupervisor, isActive,
            //                           isLocked);

            return 0;
        }

        public static int Delete(int id)
        {
            return RegisterData.Delete(id);
        }

        public static List<Register> RetrieveAll()
        {
            DataSet ds = RegisterData.RetrieveAll();
            List<Register> list = new List<Register>();

            foreach (DataRow row in ds.Tables[0].Rows)
            {
                list.Add(new Register
                {
                    Id = (int)row["Id"],
                    UserName = row["UserName"].ToString(),
                    Password = row["Password"].ToString(),
                    FirstName = row["FirstName"].ToString(),
                    LastName = row["LastName"].ToString(),
                    Phone = row["Phone"].ToString(),
                    Address = row["Address"].ToString(),
                    IsSystemUser = (bool)row["IsSystemUser"],
                    IsSystemAdmin = (bool)row["IsSystemAdmin"],
                    IsSystemSupervisor = (bool)row["IsSystemSupervisor"],
                    IsActive = (bool)row["IsActive"],
                    IsLocked = (bool)row["IsLocked"]
                });
            }

            return list;
        }

        public static Register RetrieveById(int id)
        {
            DataSet ds = RegisterData.Retrieve(id);
            if (ds.Tables[0].Rows.Count == 0) return null;

            DataRow row = ds.Tables[0].Rows[0];

            return new Register
            {
                Id = (int)row["Id"],
                UserName = row["UserName"].ToString(),
                Password = row["Password"].ToString(),
                FirstName = row["FirstName"].ToString(),
                LastName = row["LastName"].ToString(),
                Phone = row["Phone"].ToString(),
                Address = row["Address"].ToString(),
                IsSystemUser = (bool)row["IsSystemUser"],
                IsSystemAdmin = (bool)row["IsSystemAdmin"],
                IsSystemSupervisor = (bool)row["IsSystemSupervisor"],
                IsActive = (bool)row["IsActive"],
                IsLocked = (bool)row["IsLocked"]
            };
        }
        public static Register RetrieveByUserName(string UserName)
        {
            DataSet ds = RegisterData.RetrieveByUserName(UserName);
            if (ds.Tables[0].Rows.Count == 0) return null;

            DataRow row = ds.Tables[0].Rows[0];

            return new Register
            {
                Id = (int)row["Id"],
                UserName = row["UserName"].ToString(),
                Password = row["Password"].ToString(),
                FirstName = row["FirstName"].ToString(),
                LastName = row["LastName"].ToString(),
                Phone = row["Phone"].ToString(),
                Address = row["Address"].ToString(),
                IsSystemUser = (bool)row["IsSystemUser"],
                IsSystemAdmin = (bool)row["IsSystemAdmin"],
                IsSystemSupervisor = (bool)row["IsSystemSupervisor"],
                IsActive = (bool)row["IsActive"],
                IsLocked = (bool)row["IsLocked"]
            };
        }

        public static Boolean Authenticate(string UserName, string PassWord)
        {
            if (PassWord.Trim() == "")
            {
                return false;
            }
            bool bVal = false;
            try
            {

                Register user = Register.RetrieveByUserName(UserName);
                if (user != null)
                {
                    if (PasswordHash.VerifyPassword(PassWord, user.Password))
                    {
                        bVal = true;
                    }
                    else
                    {
                        if (PasswordHash.isHashedPassword(PassWord))
                        {
                            bVal = false;
                        }
                        else if (PassWord == user.Password)
                        {
                            bVal = true;
                            user.Password = PasswordHash.GenerateHash(PassWord);
                            //Register.Update(user.Id, user.UserName,user.Password,user.FirstName,user.LastName,user.Phone,user.Address,user.IsSystemUser,
                            //    user.IsSystemAdmin,user.IsSystemSupervisor,user.IsActive,user.IsLocked);
                        }
                    }
                }
            }
            catch (Exception ex)
            {

                throw new Exception("Authenticate failed", ex);
            }

            return bVal;
        }
    }
}
