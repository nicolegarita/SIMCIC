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


        public Cita BuscarCita(string hora, string fecha, int cedulaMedico)
        {
            return cit.BuscarCita(hora, fecha, cedulaMedico);
        }

        public void InsertarCita(Cita cita)
        {
            cit.InsertarCita(cita);
        }


        public List<Cita> ListarCitasPorMedico(int cedulaMedico)
        {
            return cit.ListarCitasPorMedico(cedulaMedico);
        }


        public void EliminarCita(int idCita)
        {
            cit.EliminarCita(idCita);
        }

        public List<Cita> ListarCitasPorFecha(int cedulaMedico, string fecha)
        {
            return cit.ListarCitasPorFecha(cedulaMedico, fecha);
        }

        public List<Cita> ListarCitasPorHora(int cedulaMedico, string hora)
        {
            return cit.ListarCitasPorHora(cedulaMedico, hora);
        }

        public List<Cita> ListarCitasPorFechaHora(int cedulaMedico, string hora, string fecha)
        {
            return cit.ListarCitasPorFechaHora(cedulaMedico, hora, fecha);
        }
    }
}
