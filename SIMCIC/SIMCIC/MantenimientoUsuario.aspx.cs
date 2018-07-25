using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SIMCIC
{
    public partial class MantenimientoUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            div2.Visible = false;
            div3.Visible = false;
        }

        protected void btnVerificar_Click(object sender, EventArgs e)
        {
            div1.Visible = false;
            div2.Visible = true;
            div3.Visible = false;
        }

        protected void btnVerificarCodigo_Click(object sender, EventArgs e)
        {
            div1.Visible = false;
            div2.Visible = false;
            div3.Visible = true;
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {

        }
    }
}