using ServiceStack.OrmLite;
using SIMCIC.DAL.Interfaces;
using SIMCIC.DATA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SIMCIC.DAL.Metodos
{
    public class MCita : MBase, ICita
    {
        public void ActualizarCita(Cita cita)
        {
            _db.Update(cita);
        }

        public Cita BuscarCita(string hora, string fecha, int cedulaMedico)
        {
            return _db.Select<Cita>(x => x.Fecha == fecha && x.Hora == hora && x.CedulaMedico == cedulaMedico).FirstOrDefault();
        }

        public void InsertarCita(Cita cita)
        {
            _db.Insert(cita);
        }

        public List<Cita> ListarCitasPorMedico(int cedulaMedico)
        {
            return _db.Select<Cita>(x => x.CedulaMedico == cedulaMedico);
        }

        public void EliminarCita(int idCita)
        {
            _db.Delete<Cita>(x => x.IdCita == idCita);
        }

        public List<Cita> ListarCitasPorFecha(int cedulaMedico, string fecha)
        {
            return _db.Select<Cita>(x => x.CedulaMedico == cedulaMedico && x.Fecha == fecha);
        }

        public List<Cita> ListarCitasPorHora(int cedulaMedico, string hora)
        {
            return _db.Select<Cita>(x => x.CedulaMedico == cedulaMedico && x.Hora == hora);
        }

        public List<Cita> ListarCitasPorFechaHora(int cedulaMedico, string hora, string fecha)
        {
            return _db.Select<Cita>(x => x.CedulaMedico == cedulaMedico && x.Hora == hora && x.Fecha == fecha);
        }

        public Cita BuscarCitaId(int idCita)
        {
            return _db.Select<Cita>(x => x.IdCita == idCita)
                .FirstOrDefault();
        }
    }
}
