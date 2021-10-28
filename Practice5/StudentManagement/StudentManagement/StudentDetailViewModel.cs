using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using static StudentManagement.SearchStudentViewModel;

namespace StudentManagement
{

    public class StudentDetailViewModel : BaseViewModel,ICloseable
    {
        private string classdetail;
        private bool ismale1;
        private int studentIddetail;
        private string firstnamedetail;
        private string lastnamedetail;
        private string emaildetail;
        private string genderdetail;
        

        public int StudentIddetail
        {
            get => studentIddetail; set
            {
                studentIddetail = value;
                OnPropertyChanged(nameof(StudentIddetail));

            }
        }
        public string Firstnamedetail
        {
            get => firstnamedetail; set
            {
                firstnamedetail = value;
                OnPropertyChanged(nameof(Firstnamedetail));

            }
        }
        public string Lastnamedetail
        {
            get => lastnamedetail; set
            {
                lastnamedetail = value;
                OnPropertyChanged(nameof(Lastnamedetail));

            }
        }
        public string Emaildetail
        {
            get => emaildetail; set
            {
                emaildetail = value;
                OnPropertyChanged(nameof(Emaildetail));

            }
        }
        public string Genderdetail
        {
            get => genderdetail; set
            {
                genderdetail = value;
                OnPropertyChanged(nameof(Genderdetail));

            }
        }
        public string Classdetail
        {
            get => classdetail; set
            {
                classdetail = value;
                OnPropertyChanged(nameof(Classdetail));

            }
        }
        public ICommand SaveCommand { get; set; }
        public ICommand CanCleCommand { get; set; }
        public ICommand DeleteCommand { get; set; }

        public Boolean Ismale
        {
            get => ismale1; set
            {
                ismale1 = value;
                OnPropertyChanged(nameof(Ismale));

            }
        }

    public Boolean IsFemale
        {
            get => !ismale1; set
            {
                ismale1 = !value;
                OnPropertyChanged(nameof(IsFemale));

            }
        }

        private readonly IStudentService m_studentService;

        public StudentDetailViewModel(IStudentService studentService, int studentId)
        {
            m_studentService = studentService;
            m_student = m_studentService.LoadStudentById(studentId);
            StudentIddetail = m_student.studentId;
            Firstnamedetail = m_student.firstname;
            Lastnamedetail = m_student.lastname;
            Emaildetail = m_student.email;
            Genderdetail = m_student.gender;
            Classdetail = m_student.Class;
            Ismale = (Genderdetail == "Male");
            SaveCommand = new ConditionalCommand(x => DoSave());
            CanCleCommand = new ConditionalCommand(x => DoCancle());
            
        }

        public event EventHandler CloseRequest;
        private void DoCancle()
        {
            var handler = CloseRequest;
            if (handler != null) handler(this, EventArgs.Empty);
            
        }
          

        private  Student m_student;
        private void DoSave()
        {
            m_student.studentId = StudentIddetail;
            m_student.firstname = Firstnamedetail;
            m_student.lastname = Lastnamedetail;
            m_student.Class = Classdetail;
            m_student.gender = Genderdetail;
            m_student.email = Emaildetail;
            m_studentService.UpdateOrCreatestudent(m_student);
           
        }
    }


}
