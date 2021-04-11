using System.Collections.Generic;
using System.Linq;
using InternAPI.Data;
using InternAPI.Models;
using InternAPI.Repository.IRepository;

namespace InternAPI.Repository
{
    public class StudentRepository : IStudentRepository
    {
        private readonly ApplicationDbContext _db;
        public StudentRepository(ApplicationDbContext db)
        {
            _db = db;
        }

        public List<Student> GetFacultyByName(string Faculty)
        {
            return _db.Student.Where(x => x.Faculty == Faculty).ToList();
        }

        public List<Student> GetAdvisorByName(string Advisor)
        {
            return _db.Student.Where(x => x.Advisor == Advisor).ToList();
        }
         
        public List<Student> GetCompanyById(int id)
        {
            return _db.Student.Where(x => x.CompanyId == id).ToList();
        }
 
        /// <summary>
        /// Saves changes to database.
        /// </summary>
        /// <returns>boolean</returns>
        public bool Save()
        {
            return _db.SaveChanges() >= 0 ? true : false;
        }

       
    }
}