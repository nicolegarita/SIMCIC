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
    public class MMedicamento : MBase, IMedicamento
    {
        public void ActualizarMedicamento(Medicamento medicamento)
        {
            throw new NotImplementedException();
        }

        public Medicamento BuscarMedicamento(int idMedicamento)
        {
            return _db.Select <Medicamento>(x => x.IdMedicamento == idMedicamento)
                .FirstOrDefault();
        }

        public void EliminarMedicamento(int idMedicamento)
        {
            _db.Delete<Medicamento>(x => x.IdMedicamento == idMedicamento);
        }

        public void InsertarMedicamento(Medicamento medicamento)
        {
            _db.Insert(medicamento);
        }

        public List<Medicamento> ListarMedicamentos()
        {
            return _db.Select<Medicamento>();
        }

        public List<Medicamento> ListarMedicamentosCategoria(int idCategoria)
        {
            return _db.Select<Medicamento>(x => x.IdCategoria
               == idCategoria);
        }

        public List<Medicamento> ListarMedicamentosPorNombre(string nombre)
        {
            return _db.Select<Medicamento>(x => x.NombreMedicamento
               == nombre);
        }
    }
}
