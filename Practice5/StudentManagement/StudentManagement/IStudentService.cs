using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static StudentManagement.SearchStudentViewModel;

namespace StudentManagement
{
   public interface IStudentService
    {
        IList<Student> SearchStudent(string keyword, string hutechclass);
        Student LoadStudentById(int id);
        void UpdateOrCreatestudent(Student student);
        void DeleteStudentById(int id);
    }

    public interface ICloseable
    {
        event EventHandler CloseRequest;
    }
}
