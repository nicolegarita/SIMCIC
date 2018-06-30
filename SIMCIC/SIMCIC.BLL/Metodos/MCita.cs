using SIMCIC.BLL.Interfaces;
using SIMCIC.DATA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SIMCIC.BLL.Metodos
{
    public class MCita : MBase, ICita
    {
        public void ActualizarCita(Cita cita)
        {
            cit.ActualizarCita(cita);
        }

    
        public Cita BuscarCita(string hora, string fecha)
        {
            return cit.BuscarCita(hora, fecha);
        }

        public void InsertarCita(Cita cita)
        {
            cit.InsertarCita(cita);
        }

      
        public List<Cita> ListarCitasPorMedico(int cedulaMedico)
        {
            return cit.ListarCitasPorMedico(cedulaMedico);
        }

        

        
    }
}
