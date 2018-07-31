using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SIMCIC
{
    public partial class InicioSesion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbOlvidar_Click(object sender, EventArgs e)
        {
            Response.Redirect("MantenimientoUsuario.aspx");
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegistrarMedicamentos.aspx");
        }
    }
}