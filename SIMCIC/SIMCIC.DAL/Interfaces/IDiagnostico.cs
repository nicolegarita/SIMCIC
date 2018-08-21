using SIMCIC.DATA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SIMCIC.DAL.Interfaces
{
    public interface IDiagnostico
    {
        //Mostrar
        List<Diagnostico> ListarDiagnosticos();

        void InsertarDiagnostico(Diagnostico diagnostico);
        void ActualizarDiagnostico(Diagnostico diagnostico);
        Diagnostico BuscarDiagnosticoPorId(int idDiagnostico);

        //Filtrado
        List<Diagnostico> ListarDiagnosticoPorCita(int idCita);
        List<Diagnostico> ListarDiagnosticosPorPaciente(int idPaciente);
        List<View_Diagnosticos> ListarDiagnosticosF(int idPaciente);
    }
}
