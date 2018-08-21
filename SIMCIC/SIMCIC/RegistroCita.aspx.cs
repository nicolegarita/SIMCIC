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
        public ICita ci;

        public RegistroCita()
        {

            ci = new MCita();
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            string Today = "" + DateTime.Now.Year + "-";
            if (DateTime.Now.Month.ToString().Length == 1)
            {
                Today += "0" + DateTime.Now.Month;
            }
            else
            {
                Today += DateTime.Now.Month;
            }
            if (DateTime.Now.Day.ToString().Length == 1)
            {
                Today += "-0" + DateTime.Now.Day;
            }
            else
            {
                Today += "-" + DateTime.Now.Day;
            }

            txtFecha.Attributes["min"] = Today;
        }

        protected void btnContinuar_Click(object sender, EventArgs e)
        {


            try
            {
                Cita cita = ci.BuscarCita(txtHora.Text, txtFecha.Text, Convert.ToInt32(txtCedulaMedico.Text));
                if (cita != null)
                {
                    txtHora.BorderColor = System.Drawing.Color.Red;
                    txtFecha.BorderColor = System.Drawing.Color.Red;
                    mensajeError.Visible = true;
                    mensaje.Visible = false;
                    textoMensajeError.InnerHtml = "Fecha y hora ya se encuentran ocupados";
                }
                else
                {
                    divCitas.Visible = true;
                   

                }

            }
            catch (Exception)
            {
                mensajeError.Visible = true;
                mensaje.Visible = false;
                textoMensajeError.InnerHtml = "Fecha y hora ya se encuentran ocupados";
            }
        }


        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                Cita cit = new Cita
                {
                    NombrePaciente = txtNombre.Text,
                    Telefono = Convert.ToInt32(txttelefono.Text),
                    Fecha = txtFecha.Text,
                    Hora = txtHora.Text,
                    CedulaMedico = Convert.ToInt32(txtCedulaMedico.Text)


                };
                ci.InsertarCita(cit);
                mensaje.Visible = true;
                mensajeError.Visible = false;
                mensaje.InnerHtml = "Cita correctamente registrada";
                Limpiar();
            }
            catch (Exception)
            {

                mensajeError.Visible = true;
                mensaje.Visible = false;
                textoMensajeError.InnerHtml = "No se ha registrado la cita";
            }
           


        }
        public void Limpiar()
        {
           
            txtNombre.Text = "";
            txttelefono.Text = "";
            txtFecha.Text = "";
            txtHora.Text = "";
            txtCedulaMedico.Text = "";
        }

    }
}