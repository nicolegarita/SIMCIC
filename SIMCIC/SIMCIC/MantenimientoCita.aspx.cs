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
    public partial class MantenimientoCita : System.Web.UI.Page
    {
        public ICita cit;

        public MantenimientoCita()
        {
            cit = new MCita();

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            divCitas.Visible = true;
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            try
            {

                Cita cita = new Cita
                {
                    IdCita= Convert.ToInt32(txtId.Text),
                    NombrePaciente = txtNombre.Text,
                    Telefono = Convert.ToInt32(txttelefono.Text),
                    Fecha = txtFecha.Text,
                    Hora = txtHora.Text,
                    CedulaMedico = Convert.ToInt32(txtCedulaMedico.Text)
                };
                cit.ActualizarCita(cita);                
                mensaje.Visible = true;
                mensajeError.Visible = false;
                textoMensaje.InnerHtml = "Cita Modificada";
                textoMensajeError.InnerHtml = string.Empty;
                Limpiar();

            }
            catch (Exception)
            {
                mensaje.Visible = false;
                mensajeError.Visible = true;
                mensajeError.InnerHtml = "No se modificó la cita";
            }
        }

        protected void btnModificar_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName.Equals("mod"))
            {
                Label IdCita = lvCitas.Items[Convert.ToInt32(e.CommandArgument)].FindControl("lblID") as Label;
                int idCita = Convert.ToInt32(IdCita.Text);
                var citas = cit.BuscarCitaId(idCita);

                if (citas != null)
                {
                    txtId.Text = Convert.ToString(citas.IdCita);
                    txtNombre.Text = citas.NombrePaciente;
                    txttelefono.Text = Convert.ToString(citas.Telefono);
                    txtFecha.Text = citas.Fecha;
                    txtHora.Text = citas.Hora;
                    txtCedulaMedico.Text = Convert.ToString(citas.CedulaMedico);


                    mensajeError.Visible = false;
                    mensaje.Visible = false;
                }
                else
                {
                    mensajeError.Visible = true;
                    mensajeError.InnerHtml = "No se encuentra la cita";
                }


            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                cit.EliminarCita(Convert.ToInt32(txtId.Text));
                divCitas.Visible = false;
               

            }
            catch (Exception)
            {
                textoMensaje.InnerHtml = string.Empty;
                textoMensajeError.InnerHtml = "Error al eliminar";

            }
        }

        protected void btnBuscarFecha_Click(object sender, EventArgs e)
        {
            try
            {
                var listaCitas = cit.ListarCitasPorFecha(Convert.ToInt32(txtMedicoBuscar.Text), txtFechaBuscar.Text);
                lvCitas.DataSource = listaCitas;
                lvCitas.DataBind();
            }
            catch (Exception)
            {

                textoMensaje.InnerHtml = string.Empty;
                textoMensajeError.InnerHtml = "Error al buscar";
            }
           
        }
        public void Limpiar()
        {

            txtId.Text = "";
            txtNombre.Text = "";
            txttelefono.Text = "";
            txtFecha.Text = "";
            txtHora.Text = "";
            txtCedulaMedico.Text = "";
        }

    }
}