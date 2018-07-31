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
    public partial class RegistrarMedicamentos : System.Web.UI.Page
    {
        public IMedicamento med;

        public RegistrarMedicamentos()
        {
            med = new MMedicamento();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
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
                    IdCategoria = ddlCategoria.SelectedIndex

                    
                };

                med.InsertarMedicamento(medicamento);
                mensaje.Visible = true;
                mensajeError.Visible = false;
                mensaje.InnerHtml = "Medicamento registrado satisfactoriamente";




            }


            catch (Exception)
            {
                mensaje.Visible = false;
                mensajeError.Visible = true;
                mensajeError.InnerHtml = "No se registró el medicamento";
            }
        }

        protected void btnMantenimiento_Click(object sender, EventArgs e)
        {
            Response.Redirect("MantenimientoMedicamento.aspx");
        }
    }
    }
