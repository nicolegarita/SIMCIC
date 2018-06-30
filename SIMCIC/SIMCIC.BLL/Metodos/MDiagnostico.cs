using SIMCIC.BLL.Interfaces;
using SIMCIC.DATA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SIMCIC.BLL.Metodos
{

    public class MDiagnostico : MBase, IDiagnostico
    {
        public void ActualizarDiagnostico(Diagnostico diagnostico)
        {
            diag.ActualizarDiagnostico(diagnostico);
        }

        public Diagnostico BuscarDiagnosticoPorId(int idDiagnostico)
        {
            return diag.BuscarDiagnosticoPorId(idDiagnostico);
        }

        public void InsertarDiagnostico(Diagnostico diagnostico)
        {
            diag.InsertarDiagnostico(diagnostico);
        }

        public List<Diagnostico> ListarDiagnosticoPorCita(int idCita)
        {
            return diag.ListarDiagnosticoPorCita(idCita);
        }

        public List<Diagnostico> ListarDiagnosticos()
        {
            return diag.ListarDiagnosticos();
        }


        public List<Diagnostico> ListarDiagnosticosPorPaciente(int idPaciente)
        {
            return diag.ListarDiagnosticosPorPaciente(idPaciente);
        }
    }
}
