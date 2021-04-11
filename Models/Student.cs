using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace InternAPI.Models
{
    public class Student
    {
        [Key]
        public int Id { get; set; }

        public string Name { get; set; }

        public string LastName { get; set; }

        public string Faculty { get; set; }

        public string Department { get; set; }

        public string Address { get; set; }

        public string PhoneNumber { get; set; }

        public string Mail { get; set; }

        public string Password { get; set; }

        public int CompanyId { get; set; }

        public string InternshipDepertment { get; set; }

        public string Advisor { get; set; }

        public int insuranceNo { get; set; }
         

    }
}
