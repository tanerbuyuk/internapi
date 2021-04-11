using InternAPI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InternAPI.Repository.IRepository
{
    public interface IStudentRepository
    {
        List<Student> GetCompanyById(int id);
        List<Student> GetAdvisorByName(string id);
        List<Student> GetFacultyByName(string id);

    }
}
