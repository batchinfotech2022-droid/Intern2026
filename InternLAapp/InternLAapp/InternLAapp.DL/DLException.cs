using System;

namespace InternLAapp.DL
{
    public class DLException : Exception
    {
        public DLException() { }
        public DLException(string message) : base(message) { }
        public DLException(string message, Exception inner) : base(message, inner) { }
    }
}
