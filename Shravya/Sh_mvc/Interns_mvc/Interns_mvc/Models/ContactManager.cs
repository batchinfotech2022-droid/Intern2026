using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Web;
using Interns_mvc.ViewModels;

namespace Interns_mvc.Models
{
    public class ContactManager
    {
        private int _id;
        private string _firstName;
        private string _lastName;
        private string _email;
        private string _phone;
        private string _createdBy;
        private DateTime _createdDate;
        private string _modifiedBy;
        private DateTime _modifiedDate;
        private bool _isDeleted;

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }
        public string FirstName
        {
            get { return _firstName; }
            set { _firstName = value; }
        }
        public string LastName {
            get { return _lastName; }
            set { _lastName = value; }
               
       }
        public string Email
        {
            get { return _email; }
            set { _email = value; }
        }
        public string Phone
        {
            get { return _phone; }
            set { _phone = value; }
        }
        public string CreatedBy
        {
            get { return _createdBy; }
            set { _createdBy = value; }
        }
        public DateTime CreatedDate
        {
            get { return _createdDate; }
            set { _createdDate = value; }
        }
        public string ModifiedBy
        {
            get { return _modifiedBy; }
            set { _modifiedBy = value; }
        }
        public DateTime ModifiedDate
        {
            get { return _modifiedDate; }
            set { _modifiedDate = value; }
        }
        public bool IsDeleted
        {
            get { return _isDeleted; }
            set { _isDeleted = value; }
        }

        public ContactManager()
        {
            _id = 0;
            _firstName = "undefined";
            _lastName = "undefined";
            _email = "undefined";
            _phone = "undefined";
            _createdBy = "undefined";
            _createdDate = DateTime.MinValue;
            _modifiedBy = "undefined";
            _modifiedDate = DateTime.MinValue;
            _isDeleted = true;
        }

        public ContactManager(int Id,string FirstName,string LastName,string Email, string Phone,string CreatedBy,DateTime CreatedDate,string ModifiedBy,DateTime ModifiedDate,bool IsDeleted)
        {
            _id=Id;
            _firstName=FirstName;
            _lastName=LastName;
            _email=Email;
            _phone=Phone;
            _createdBy=CreatedBy;
            _createdDate = CreatedDate;
            _modifiedBy=ModifiedBy;
            _modifiedDate = ModifiedDate;
            _isDeleted = IsDeleted;
        }

        public static List<ContactManager> Contacts = new List<ContactManager>()
        {
            new ContactManager(1,"Rahul","Shetty","rahul@gmail.com","9876543210","Admin",DateTime.Now,"Admin",DateTime.Now,false),
            new ContactManager(2,"Anita","Sharma","anita@gmail.com","9876543211","Admin",DateTime.Now,"Admin",DateTime.Now,false),
            new ContactManager(3,"Ravi","Kumar","ravi@gmail.com","9876543212","Admin",DateTime.Now,"Admin",DateTime.Now,false),
            new ContactManager(4,"Sneha","Patil","sneha@gmail.com","9876543213","Admin",DateTime.Now,"Admin",DateTime.Now,false),
            new ContactManager(5,"Amit","Verma","amit@gmail.com","9876543214","Admin",DateTime.Now,"Admin",DateTime.Now,false),
            new ContactManager(6,"Neha","Singh","neha@gmail.com","9876543215","Admin",DateTime.Now,"Admin",DateTime.Now,false),
            new ContactManager(7,"Kiran","Rao","kiran@gmail.com","9876543216","Admin",DateTime.Now,"Admin",DateTime.Now,false),
            new ContactManager(8,"Pooja","Nair","pooja@gmail.com","9876543217","Admin",DateTime.Now,"Admin",DateTime.Now,false),
            new ContactManager(9,"Vikas","Mehta","vikas@gmail.com","9876543218","Admin",DateTime.Now,"Admin",DateTime.Now,false),
            new ContactManager(10,"Divya","Iyer","divya@gmail.com","9876543219","Admin",DateTime.Now,"Admin",DateTime.Now,false)
        };

        public static List<ContactManager> ReadAll()
        {
            return Contacts.Where(x => x.IsDeleted == false).ToList();
        }

        public static ContactManager ReadById(int id)
        {
            return Contacts.FirstOrDefault(x => x.Id == id && x.IsDeleted == false);
        }

        public static void Create(ContactManager contact)
        {
            contact.Id = Contacts.Max(x => x.Id) + 1;
            contact.CreatedDate = DateTime.Now;
            contact.ModifiedDate = DateTime.Now;
            contact.IsDeleted = false;

            Contacts.Add(contact);
        }

        public static bool Update(ContactManager contact)
        {
            var existing = Contacts.FirstOrDefault(x => x.Id == contact.Id && x.IsDeleted == false);

            if (existing == null)
                return false;

            existing.FirstName = contact.FirstName;
            existing.LastName = contact.LastName;
            existing.Email = contact.Email;
            existing.Phone = contact.Phone;
            existing.ModifiedBy = contact.ModifiedBy;
            existing.ModifiedDate = DateTime.Now;

            return true;
        }

        public static bool Delete(int id)
        {
            var contact = Contacts.FirstOrDefault(x => x.Id == id && x.IsDeleted == false);

            if (contact == null)
                return false;

            contact.IsDeleted = true;
            contact.ModifiedDate = DateTime.Now;

            return true;
        }
        public ContactManager(ContactManagerViewModel newmodel)
        {
            _id= newmodel.Id;
            _firstName= newmodel.FirstName;
            _lastName= newmodel.LastName;
            _email= newmodel.Email;
            _phone= newmodel.Phone;

        }
        
    }
}



    
    
