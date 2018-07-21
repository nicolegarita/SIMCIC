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

        public Cita BuscarCita(string hora, string fecha)
        {
            return _db.Select<Cita>(x => x.Fecha == fecha && x.Hora == hora).FirstOrDefault();
        }

        public void InsertarCita(Cita cita)
        {
            _db.Insert(cita);
        }

        public List<Cita> ListarCitasPorMedico(int cedulaMedico)
        {
            return _db.Select<Cita>(x => x.CedulaMedico == cedulaMedico);
        }

        
    }
}
