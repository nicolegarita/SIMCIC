using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SIMCIC
{
    public partial class CalculosMedicos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CalcularDosificacion_Click(object sender, EventArgs e)
        {
            try
            {
                txtResultadoDosi.Text = Convert.ToString((Convert.ToInt64(txtPesoDosi.Text) * Convert.ToDouble(txtDosis.Text)) / Convert.ToInt64(txtFrecuencia.Text));
            }
            catch (Exception)
            {
                mensaje.Visible = false;
                mensajeError.Visible = true;
                mensajeError.InnerHtml = "Digite valores válidos";
            }
          

        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            try
            {
                double libras = Convert.ToDouble(txtPesoIMC.Text) * 2.20462;
                double pulgadas = Convert.ToDouble(txtAlturaIMC.Text) * 39.3701;
                double resultado = (libras * 703) / (pulgadas * pulgadas);

                txtResultadoIMC.Text = Convert.ToString(resultado);

                if (resultado < 16.00)

                {
                    txtClasificacion.Text = "Infrapeso: Delgadez Severa";
                }
                else if (16.00 < resultado && resultado < 16.99)
                {
                    txtClasificacion.Text = "Infrapeso: Delgadez moderada";
                }
                else if (17.00 < resultado && resultado < 18.49)
                {
                    txtClasificacion.Text = "Infrapeso: Delgadez aceptable";

                }
                else if (18.50 <resultado && resultado < 24.49)
                {
                    txtClasificacion.Text = "Peso normal";
                }
                else if (25.00 < resultado && resultado < 29.99)
                {
                    txtClasificacion.Text = "Sobrepeso";
                }
                else if (30.00 < resultado && resultado < 34.49)
                {
                    txtClasificacion.Text = "Obeso: Tipo I";
                }
                else if (35.00 < resultado && resultado < 39.99)
                {
                    txtClasificacion.Text = "Obeso: Tipo II";
                }
                else if (resultado > 40.00)
                {
                    txtClasificacion.Text = "Obeso: Tipo III Mórbida";
                }
            }
            catch (Exception)
            {
                mensaje.Visible = false;
                mensajeError.Visible = true;
                mensajeError.InnerHtml = "Digite valores válidos";
            }


        }


        public void limpiarCampos() {
            txtAlturaIMC.Text = "";
            txtPesoIMC.Text = "";
            txtDosis.Text = "";
            txtFrecuencia.Text = "";
            txtPesoDosi.Text = "";
            

        }
    }
}