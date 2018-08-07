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
    public partial class RegistroClientes : System.Web.UI.Page
    {
        public IPaciente pac;

        public RegistroClientes()
        {
            pac = new MPaciente();
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {


                Paciente paciente = new Paciente
                {
                    Cedula = Convert.ToInt32(txtCedula.Text),
                    Nombre = txtNombre.Text,
                    Apellido = txtApellidos.Text,
                    FechaNacimiento = txtFechaNacimiento.Text,
                    Edad = Convert.ToInt32(txtEdad.Text),
                    Sexo = ddlSexo.Text,
                    Telefono = Convert.ToInt32(txtTelefono.Text),
                    Correo = txtCorreo.Text,
                    Ocupacion = txtOcupacion.Text
                };

                pac.InsertarPaciente(paciente);
                mensaje.Visible = true;
                mensajeError.Visible = false;
                mensaje.InnerHtml = "Paciente registrado satisfactoriamente";

       
        }

        protected void btnMantenimiento_Click(object sender, EventArgs e)
        {
            Response.Redirect("MantenimientoPacientes.aspx");
        }
    }
}