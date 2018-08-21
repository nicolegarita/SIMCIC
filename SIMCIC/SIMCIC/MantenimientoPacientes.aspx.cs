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
    public partial class MantenimientoPacientes : System.Web.UI.Page
    {
        public IPaciente pac;

        public MantenimientoPacientes()
        {
            pac = new MPaciente();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
               
               
                
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                Paciente paciente = pac.BuscarPacientePorCedula(Convert.ToInt32(txtCedulaBuscar.Text));
                if (paciente != null)
                {
                    txtCedula.Text = Convert.ToString(paciente.Cedula);
                    txtNombre.Text = paciente.Nombre;
                    txtApellidos.Text = paciente.Apellido;
                    txtTelefono.Text = Convert.ToString(paciente.Telefono);                   
                    txtEdad.Text = Convert.ToString(paciente.Edad);
                    txtCorreo.Text = paciente.Correo;
                    ddlSexo.Text = paciente.Sexo;
                    txtFechaNacimiento.Text = paciente.FechaNacimiento;
                    txtOcupacion.Text = paciente.Ocupacion;
                    txtCedula.ReadOnly = true;
                   
                        
                }
                else
                {             
                    mensajeError.Visible = true;
                    mensaje.Visible = false;
                    textoMensajeError.InnerHtml = "No existe registro del paciente";
                    textoMensaje.InnerHtml = string.Empty;
                }
            }
            catch (Exception)
            {
                mensaje.Visible = false;
                mensajeError.Visible = true;
                mensajeError.InnerHtml = "Error";
            }




        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            try
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
                pac.ActualizarPaciente(paciente);             
                txtCedula.ReadOnly = false;
                txtCedula.Text = string.Empty;
                txtCedula.Focus();             
                mensaje.Visible = true;
                mensajeError.Visible = false;
                textoMensaje.InnerHtml = "Cliente modificado correctamente";
                textoMensajeError.InnerHtml = string.Empty;
                Limpiar();


            }
            catch (Exception)
            {
                mensaje.Visible = false;
                mensajeError.Visible = true;
                mensajeError.InnerHtml = "No se modificó el paciente";
            }
        }
        public void Limpiar()
        {
            txtCedula.Text = "";
            txtApellidos.Text = "";
            txtCorreo.Text = "";
            txtFechaNacimiento.Text = "";
            txtEdad.Text = "";
            txtNombre.Text = "";
            txtOcupacion.Text = "";
            txtTelefono.Text = "";
        }

    }
}
