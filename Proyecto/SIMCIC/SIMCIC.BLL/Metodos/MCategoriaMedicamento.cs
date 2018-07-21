using SIMCIC.BLL.Interfaces;
using SIMCIC.DATA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SIMCIC.BLL.Metodos
{
    public class MCategoriaMedicamento : MBase, ICategoriaMedicamento
    {
        public List<CategoriaMedicamento> ListarCategorias()
        {
            return catMed.ListarCategorias();


        }
    }
}
