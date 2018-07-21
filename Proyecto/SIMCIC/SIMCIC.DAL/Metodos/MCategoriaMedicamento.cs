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
    public class MCategoriaMedicamento : MBase, ICategoriaMedicamento
    {
        public List<CategoriaMedicamento> ListarCategorias()
        {
            return _db.Select<CategoriaMedicamento>();


        }
    }
}
