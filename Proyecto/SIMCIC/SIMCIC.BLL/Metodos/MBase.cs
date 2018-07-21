using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SIMCIC.BLL.Metodos
{
    public class MBase
    {

        public DAL.Interfaces.ICategoriaMedicamento catMed;
        public DAL.Interfaces.IMedicamento med;
        public DAL.Interfaces.IPaciente pac;
        public DAL.Interfaces.IDiagnostico diag;
        public DAL.Interfaces.ICita cit;


        public MBase()
        {
            catMed = new DAL.Metodos.MCategoriaMedicamento();
            med = new DAL.Metodos.MMedicamento();
            pac = new DAL.Metodos.MPaciente();
            diag = new DAL.Metodos.MDiagnostico();
            cit = new DAL.Metodos.MCita();
        }
    }

   
}
