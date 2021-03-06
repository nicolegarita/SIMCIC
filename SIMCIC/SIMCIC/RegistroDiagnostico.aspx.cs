﻿using SIMCIC.BLL.Interfaces;
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
    public partial class RegistroDiagnostico : System.Web.UI.Page
    {
        public IDiagnostico diag;

        public RegistroDiagnostico()
        {
            diag = new MDiagnostico();
        }


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

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                Diagnostico diagnostico = new Diagnostico
                {
                    IdCita = Convert.ToInt32(txtCita.Text),
                    APP = txtAPP.Text,
                    APnP = txtAPNP.Text,
                    AQx = txtAQX.Text,
                    AGO = txtAGO.Text,
                    ATx = txtATX.Text,
                    Motivo = txtMotivo.Text,
                    PlanMedico = txtPlanMedico.Text,
                    Incapacidad = txtIncapacidad.Text,
                    ExFx = txtExFx.Text,
                    Analisis = txtAnalisis.Text,
                    Referencia = txtReferencia.Text,
                    IPX = txtIPX.Text,
                    IdPaciente = Convert.ToInt64(txtCedulaPaciente.Text)

                };
                diag.InsertarDiagnostico(diagnostico);
                mensaje.Visible = true;
                mensajeError.Visible = false;
                mensaje.InnerHtml = "Diagnostico registrado satisfactoriamente";
                Limpiar();


            }
            catch (Exception) {
                mensaje.Visible = false;
                mensajeError.Visible = true;
                mensajeError.InnerHtml = "No se registró correctamente";
            }





        }

       
        public void Limpiar()
        {         
            txtAPP.Text = "";
            txtAPNP.Text = "";
            txtAQX.Text = "";
            txtAGO.Text = "";
            txtATX.Text = "";
            txtMotivo.Text = "";
            txtPlanMedico.Text = "";
            txtIncapacidad.Text = "";
            txtExFx.Text = "";
            txtAnalisis.Text = "";    
            txtReferencia.Text = "";
            txtIPX.Text = "";
    
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
                else if (18.50 < resultado && resultado < 24.49)
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
    }
}