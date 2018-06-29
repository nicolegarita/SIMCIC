using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SIMCIC.DATA
{
    public class Pacientes
    {
        public int Cedula { get; set; }
        public string NombreCompleto { get; set; }
        public string FechaNacimiento { get; set; }
        public int Edad { get; set; }
        public string Sexo { get; set; }
        public int Telefono { get; set; }
        public string Correo { get; set; }
        public string Ocupacion { get; set; }
    }
}
