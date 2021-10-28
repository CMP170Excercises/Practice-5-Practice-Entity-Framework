using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using static StudentManagement.SearchStudentViewModel;

namespace StudentManagement
{
   public class StudentServiceWithFile : IStudentService
    {
        private IList<Student> m_students;
        public StudentServiceWithFile()
        {
            var data = File.ReadAllText("Student_Data.json");
            m_students = JsonConvert.DeserializeObject<List<Student>>(data);
        }
   
        public void DeleteStudentById(int id)
        {
            var deletedStudent = LoadStudentById(id);
            if (deletedStudent != null)
            {
                m_students.Remove(deletedStudent);
            }
        }

        public Student LoadStudentById(int id)
        {
            return m_students.FirstOrDefault(x => x.studentId == id);
        }

        public IList<Student> SearchStudent(string keyword ,string hutechclass)
        {
            var result = m_students.Where(s=> (s.Class == hutechclass ||hutechclass==null)&& (s.firstname == keyword || s.lastname == keyword ||keyword==null))
                               .OrderBy(s => s.studentId).ToList();       

            foreach (var s in result)
            {
                Console.WriteLine(s);
            }
            return result;
        }

        public void UpdateOrCreatestudent(Student student)
        {
            if (student.studentId > 0)
            {
                var updatedStudent = LoadStudentById(student.studentId);
                updatedStudent.lastname = student.lastname;
                updatedStudent.firstname = student.firstname;
                updatedStudent.studentId = student.studentId;
                updatedStudent.email = student.email;
                updatedStudent.Class = student.Class;
                updatedStudent.gender = student.gender;
                updatedStudent.gpa = student.gpa;
            }
            else
            {
                var newStudentId = m_students.Select(s => s.studentId).OrderByDescending(s => s).FirstOrDefault();
                student.studentId = newStudentId + 1;
                m_students.Add(student);
            }
        }
    }
}
