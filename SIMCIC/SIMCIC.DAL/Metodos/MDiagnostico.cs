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
    public class MDiagnostico : MBase, IDiagnostico
    {
        public void ActualizarDiagnostico(Diagnostico diagnostico)
        {
            _db.Update(diagnostico);
        }

        public Diagnostico BuscarDiagnosticoPorId(int idDiagnostico)
        {
            return _db.Select<Diagnostico>(x => x.IdDiagnostico == idDiagnostico)
                  .FirstOrDefault();
        }

        public void InsertarDiagnostico(Diagnostico diagnostico)
        {
            _db.Insert(diagnostico);
        }

        public List<Diagnostico> ListarDiagnosticoPorCita(int idCita)
        {
            return _db.Select<Diagnostico>(x => x.IdCita
               == idCita);
        }

        public List<Diagnostico> ListarDiagnosticos()
        {
            throw new NotImplementedException();
        }


        public List<Diagnostico> ListarDiagnosticosPorPaciente(int idPaciente)
        {
            return _db.Select<Diagnostico>(x => x.IdPaciente
               == idPaciente);
        }

       

        public Cita ObtenerFecha(int idCita)
        {
            return _db.Select<Cita>(x => x.IdCita == idCita).FirstOrDefault();


        }

        public List<View_Diagnosticos> ListarDiagnosticosF(int idPaciente)
        {
            return _db.SqlList<View_Diagnosticos>("EXEC sp_VerDiagnosticosPaciente {0}", idPaciente);
        }

    }
}
