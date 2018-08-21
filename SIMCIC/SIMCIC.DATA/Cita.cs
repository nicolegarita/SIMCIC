using ServiceStack.DataAnnotations;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SIMCIC.DATA
{
    public class Cita
    {
        [AutoIncrement]
        public int IdCita { get; set; }
        public string NombrePaciente { get; set; }
        public int Telefono { get; set; }
        public string Fecha { get; set; }
        public string Hora { get; set; }
        public int CedulaMedico { get; set; }

    }
}
