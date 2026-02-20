namespace Interns_MVC.ViewModels
{
    public class StudentViewModel
    {
        private int _id;
        private string _name;
        private string _className;
        private int _marks;

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }

        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }

        public string ClassName
        {
            get { return _className; }
            set { _className = value; }
        }

        public int Marks
        {
            get { return _marks; }
            set { _marks = value; }
        }

        public StudentViewModel()
        {
            _id = 0;
            _name = "undefined";
            _className = "undefined";
            _marks = 0;
        }

        public StudentViewModel(int id, string name, string className, int marks)
        {
            _id = id;
            _name = name;
            _className = className;
            _marks = marks;
        }
    }
}