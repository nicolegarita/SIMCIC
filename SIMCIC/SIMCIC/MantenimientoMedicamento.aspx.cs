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
    public partial class MantenimientoMedicamento : System.Web.UI.Page
    {
        public IMedicamento med;

        public MantenimientoMedicamento()
        {
            med = new MMedicamento();

        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                Medicamento medicamento = med.BuscarMedicamento(Convert.ToInt32(txtNombreBuscar.Text));
                if (medicamento != null)
                {

                    txtNombre.Text = medicamento.NombreMedicamento;
                    txtCantidad.Text = Convert.ToString(medicamento.Cantidad);
                    ddlSexo.Text = Convert.ToString(medicamento.IdCategoria);
                    txtSuministracion.Text = medicamento.Suministracion;
                    txtFecha.Value = medicamento.FechaVencimiento;
                    txtDosisAdulto.Text = medicamento.DosisAdulto;
                    txtDosisNiños.Text = medicamento.DosisNiños;
                }
                else
                {
                    mensajeError.Visible = true;
                    mensaje.Visible = false;
                    textoMensajeError.InnerHtml = "No existe registro del medicamento";
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

                Medicamento medicamento = new Medicamento
                {
                    NombreMedicamento = txtNombre.Text,
                    Cantidad = Convert.ToInt32(txtCantidad.Text),
                    Suministracion = txtSuministracion.Text,
                    FechaVencimiento = txtFecha.Value,
                    DosisAdulto = txtDosisAdulto.Text,
                    DosisNiños = txtDosisNiños.Text,
                    IdCategoria = ddlSexo.SelectedIndex
                };
                med.ActualizarMedicamento(medicamento);
                mensaje.Visible = true;
                mensajeError.Visible = false;
                textoMensaje.InnerHtml = "Medicamento Modificado";
                textoMensajeError.InnerHtml = string.Empty;
                Limpiar();

            }
            catch (Exception)
            {
                mensaje.Visible = false;
                mensajeError.Visible = true;
                mensajeError.InnerHtml = "No se modificó el medicamento";
            }
        }
        public void Limpiar()
        {

            txtNombre.Text = "";
            txtCantidad.Text = "";
            txtSuministracion.Text = "";
            txtFecha.Value = "";
            txtDosisAdulto.Text = "";
            txtDosisNiños.Text = "";
        }
    }
    }
