using SIMCIC.BLL.Interfaces;
using SIMCIC.DATA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SIMCIC.BLL.Metodos
{
    public class MMedicamento : MBase, IMedicamento
    {
        public void ActualizarMedicamento(Medicamento medicamento)
        {
            med.ActualizarMedicamento(medicamento);
        }

        public Medicamento BuscarMedicamento(int idMedicamento)
        {
            return med.BuscarMedicamento(idMedicamento);
        }

        public void EliminarMedicamento(int idMedicamento)
        {
            med.EliminarMedicamento(idMedicamento);
        }

        public void InsertarMedicamento(Medicamento medicamento)
        {
            med.InsertarMedicamento(medicamento);
        }

        public List<Medicamento> ListarMedicamentos()
        {
            return med.ListarMedicamentos();
        }

        public List<Medicamento> ListarMedicamentosCategoria(int idCategoria)
        {
            return med.ListarMedicamentosCategoria(idCategoria);
        }

        public List<Medicamento> ListarMedicamentosPorNombre(string nombre)
        {
            return med.ListarMedicamentosPorNombre(nombre);
        }
    }
}
