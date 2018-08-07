using SIMCIC.DATA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SIMCIC.BLL.Interfaces
{
    public interface ICita
    {
        void InsertarCita(Cita cita);
        void ActualizarCita(Cita cita);
        Cita BuscarCita(string hora, string fecha, int cedulaMedico);

        //Filtrado
        List<Cita> ListarCitasPorMedico(int cedulaMedico);
        List<Cita> ListarCitasPorFecha(int cedulaMedico, string fecha);
        List<Cita> ListarCitasPorHora(int cedulaMedico, string hora);
        List<Cita> ListarCitasPorFechaHora(int cedulaMedico, string hora, string fecha);


        void EliminarCita(int idCita);
    }
}
