﻿using SIMCIC.DATA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SIMCIC.DAL.Interfaces
{
    public interface ICategoriaMedicamento
    {
        List<CategoriaMedicamento> ListarCategorias();
    }
}
