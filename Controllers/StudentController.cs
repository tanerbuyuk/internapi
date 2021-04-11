using InternAPI.Models;
using InternAPI.Repository.IRepository;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InternAPI.Controllers
{
    [Route("api/Student")]
    [ApiController]
    public class StudentController : ControllerBase
    {
        private readonly IStudentRepository _studentRepo;

        public StudentController(IStudentRepository studentRepo)
        {
            _studentRepo = studentRepo;
        }
 

        /// <summary>
        /// Find Student by id
        /// </summary>
        /// <param name="StudentId">Student ID</param>
        /// <returns>Student</returns>
        [HttpGet("byId/{companyId:int}")]

        public IActionResult GetStudent(int companyId)
        {
            var student = _studentRepo.GetCompanyById(companyId);
            if (student is null)
                return StatusCode(404);
            return Ok(student);
        }
        [HttpGet("get-advisors/{advisorName}")]

        public IActionResult GetAdvisor(string advisorName)
        {
            var student = _studentRepo.GetAdvisorByName(advisorName);
            if (student is null)
                return StatusCode(404);
            return Ok(student);
        }
        [HttpGet("get-faculties/{facultyName}")]

        public IActionResult GetFaculty(string facultyName)
        {
            var student = _studentRepo.GetFacultyByName(facultyName);
            if (student is null)
                return StatusCode(404);
            return Ok(student);
        }
    }
}
