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
    public class MPaciente : MBase, IPaciente
    {
        public void ActualizarPaciente(Paciente paciente)
        {
            _db.Update(paciente);
        }

        public Paciente BuscarPacientePorCedula(int cedula)
        {
            return _db.Select<Paciente>(x => x.Cedula == cedula)
                .FirstOrDefault();
        }

        public Paciente BuscarPacientePorNombreCompleto(string nombre, string apellido)
        {
            return _db.Select<Paciente>(x => x.Nombre == nombre && x.Apellido == apellido )
                .FirstOrDefault();
        }

        public void InsertarPaciente(Paciente paciente)
        {
            _db.Insert(paciente);
        }

        public List<Paciente> ListarPacientePorApellido(string apellido)
        {
            return _db.Select<Paciente>(x => x.Apellido == apellido);
        }

        public List<Paciente> ListarPacientePorNombre(string nombre)
        {
            return _db.Select<Paciente>(x => x.Nombre == nombre);
        }
    }
}
