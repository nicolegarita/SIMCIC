﻿using SIMCIC.DATA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SIMCIC.BLL.Interfaces
{
    public interface ICategoriaMedicamento
    {
        List<CategoriaMedicamento> ListarCategorias();
    }

}
