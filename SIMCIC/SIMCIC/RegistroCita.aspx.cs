using SIMCIC.BLL.Interfaces;
using SIMCIC.BLL.Metodos;
using SIMCIC.DATA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SIMCIC
{
    public partial class RegistroCita : System.Web.UI.Page
    {
        public ICita cit;

        public RegistroCita()
        {
            cit = new MCita();
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
         
        }

        protected void btnMantenimiento_Click(object sender, EventArgs e)
        {
            Response.Redirect("MantenimientoCita.aspx");
        }
    }
}