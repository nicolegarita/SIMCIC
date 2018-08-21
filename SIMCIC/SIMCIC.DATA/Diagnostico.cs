using ServiceStack.DataAnnotations;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SIMCIC.DATA
{
    public class Diagnostico
    {
        [AutoIncrement]
        public int IdDiagnostico { get; set; }
        public Int64 IdPaciente { get; set; }
        public string APP { get; set; }
        public string APnP { get; set; }
        public string AQx { get; set; }
        public string AGO { get; set; }
        public string ATx { get; set; }
        public string Motivo { get; set; }
        public string PlanMedico { get; set; }
        public string Incapacidad { get; set; }
        public string ExFx { get; set; }
        public string Analisis { get; set; }
        public string Referencia { get; set; }
        public string IPX { get; set; }
        public int IdCita { get; set; }

    }
}
