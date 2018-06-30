using SIMCIC.DATA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SIMCIC.BLL.Interfaces
{
    public interface IPaciente
    {
        //Búsquedas por cédula y nombre completo
        Paciente BuscarPacientePorCedula(int cedula);
        Paciente BuscarPacientePorNombreCompleto(string nombre, string apellido);

        //Filtrado por nombre y por apellido
        List<Paciente> ListarPacientePorNombre(string nombre);
        List<Paciente> ListarPacientePorApellido(string apellido);

        void InsertarPaciente(Paciente paciente);
        void ActualizarPaciente(Paciente paciente);

    }
}
