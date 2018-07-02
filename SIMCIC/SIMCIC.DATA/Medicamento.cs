using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SIMCIC.DATA
{
    public class Medicamento
    {
        public int IdMedicamento { get; set; }
        public string NombreMedicamento { get; set; }
        public int Cantidad { get; set; }
        public int IdCategoria { get; set; }
        public string Suministracion { get; set; }
        public string FechaVencimiento { get; set; }
        public string DosisNiños { get; set; }
        public string DosisAdulto { get; set; }


    }
}
