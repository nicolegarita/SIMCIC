using SIMCIC.BLL.Interfaces;
using SIMCIC.DATA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SIMCIC.BLL.Metodos
{
    public class MPaciente : MBase, IPaciente
    {
        public void ActualizarPaciente(Paciente paciente)
        {
            pac.ActualizarPaciente(paciente);
        }

        public Paciente BuscarPacientePorCedula(int cedula)
        {
            return pac.BuscarPacientePorCedula(cedula);
        }

        public Paciente BuscarPacientePorNombreCompleto(string nombre, string apellido)
        {
            return pac.BuscarPacientePorNombreCompleto(nombre, apellido);
        }

        public void InsertarPaciente(Paciente paciente)
        {
            pac.InsertarPaciente(paciente);
        }

        public List<Paciente> ListarPacientePorApellido(string apellido)
        {
            return pac.ListarPacientePorApellido(apellido);
        }

        public List<Paciente> ListarPacientePorNombre(string nombre)
        {
            return pac.ListarPacientePorNombre(nombre);
        }
    }
}
