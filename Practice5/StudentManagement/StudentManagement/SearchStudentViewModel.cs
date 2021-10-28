using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace StudentManagement
{
    public class SearchStudentViewModel : BaseViewModel
    {
        private IStudentService m_studentSrv;

        public SearchStudentViewModel()
        {
            m_studentSrv = new StudentServiceWithEF();
            Students = new ObservableCollection<Student>(m_studentSrv.SearchStudent(string.Empty, string.Empty));
            OpenDetailCommand = new ConditionalCommand(x => DoOpenDetail());
            SearchCommand = new ConditionalCommand(x => DoSearch());
            ResetCommand = new ConditionalCommand(x => DoReset());
        }


        private string m_searchkeyword;

        public string Searchkeyword
        {
            get => m_searchkeyword;
            set
            {
                m_searchkeyword = value;
                OnPropertyChanged(nameof(Searchkeyword));

            }
        }

        private string m_selectedclass;
        public string Selectedclass
        {
            get => m_selectedclass;
            set
            {
                m_selectedclass = value;
                OnPropertyChanged(nameof(m_selectedclass));
            }
        }

        private Student m_selectedstudent;
        public Student Selectedstudent
        {
            get => m_selectedstudent;
            set
            {
                 m_selectedstudent = value;
                OnPropertyChanged(nameof(m_selectedstudent));
                
            }
        }

        public ObservableCollection<Student> Students { get; set; }

        public ICommand SearchCommand { get; set; }
        public ICommand ResetCommand { get; set; }
        public ICommand OpenDetailCommand { get; set; }
        
        public void DoOpenDetail()
        {
           
                var studentStudentDetailViewModel = new StudentDetailViewModel(m_studentSrv, Selectedstudent.studentId);
                StudentDetailWindow studentDetail = new StudentDetailWindow(studentStudentDetailViewModel);
                studentDetail.DataContext = studentStudentDetailViewModel;
                studentDetail.ShowDialog();
           

        }
       
        public void DoReset()
        {
            Searchkeyword = null;
            Selectedclass = null;
            var result = m_studentSrv.SearchStudent(Searchkeyword, Selectedclass);
            foreach (var s in result)
            {
                Students.Add(s);
            }
            
        }

        public void DoSearch()
        {
            Students.Clear();
            var result = m_studentSrv.SearchStudent(Searchkeyword,Selectedclass);
            foreach(var s in result)
            {
                Students.Add(s);
            } 
        }

        public class Student
        {
            public int studentId { get; set; }
            public string firstname { get; set; }
            public string lastname { get; set; }
            public string email { get; set; }
            public string gender { get; set; }
            public string Class { get; set; }
            public decimal gpa { get; set; }

        }

    }
}
