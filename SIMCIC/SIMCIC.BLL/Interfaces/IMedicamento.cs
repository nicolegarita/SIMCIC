using SIMCIC.DATA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SIMCIC.BLL.Interfaces
{
    public interface IMedicamento
    {
        //Mostrar
        List<Medicamento> ListarMedicamentos();

        void InsertarMedicamento(Medicamento medicamento);
        void ActualizarMedicamento(Medicamento medicamento);
        void EliminarMedicamento(int idProducto);

        //Filtrado medicamentos
        Medicamento BuscarMedicamento(int idMedicamento);
        List<Medicamento> ListarMedicamentosPorNombre(string nombre);
        List<Medicamento> ListarMedicamentosCategoria(int idCategoria);
    }
}
