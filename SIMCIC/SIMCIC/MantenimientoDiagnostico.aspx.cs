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
    public partial class MantenimientoDiagnostico : System.Web.UI.Page
    {

        public IDiagnostico diag;

        public MantenimientoDiagnostico()
        {
            diag = new MDiagnostico();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        

        protected void btnBuscar_Click(object sender, EventArgs e)
        {

            try
            {
                var listaDiagnosticos = diag.ListarDiagnosticosPorPaciente(Convert.ToInt32(txtCedulaPaciente.Text));
                lvDiagnosticos.DataSource = listaDiagnosticos;
                lvDiagnosticos.DataBind();
            }
            catch (Exception)
            {

                textoMensaje.InnerHtml = string.Empty;
                textoMensajeError.InnerHtml = "Error al buscar";
            }

        }

        
        protected void btnModificar_Command(object sender, CommandEventArgs e)
        {
            divMantenimiento.Visible = true;

            if (e.CommandName.Equals("mod"))
            {
                Label IdDiagnostico = lvDiagnosticos.Items[Convert.ToInt32(e.CommandArgument)].FindControl("lblID") as Label;
                int idDiagnostico = Convert.ToInt32(IdDiagnostico.Text);
                var diagnosticos = diag.BuscarDiagnosticoPorId(idDiagnostico);

                if (diagnosticos != null)
                {
                    txtIdDiagnostico.Text = Convert.ToString(diagnosticos.IdDiagnostico);
                    txtAPP.Text = diagnosticos.APP;
                    txtAPNP.Text = diagnosticos.APnP;
                    txtAQX.Text = diagnosticos.AQx;
                    txtAGO.Text = diagnosticos.AGO;
                    txtATX.Text = diagnosticos.ATx;
                    txtMotivo.Text = diagnosticos.Motivo;
                    txtPlanMedico.Text = diagnosticos.PlanMedico;
                    txtIncapacidad.Text = diagnosticos.Incapacidad;
                    txtExFx.Text = diagnosticos.ExFx;
                    txtAnalisis.Text = diagnosticos.Analisis;
                    txtIdCita.Text = Convert.ToString(diagnosticos.IdCita);
                    txtReferencia.Text = diagnosticos.Referencia;
                    txtIPX.Text = diagnosticos.IPX;
                    txtPaciente.Text= Convert.ToString(diagnosticos.IdPaciente);


                    mensajeError.Visible = false;
                    mensaje.Visible = false;    
                }
                else
                {
                    mensajeError.Visible = true;
                    mensajeError.InnerHtml = "No se encuentra el diagnóstico";
                }


            }


        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            try
            {
                Diagnostico diagnostico = new Diagnostico
                {
                    IdCita = Convert.ToInt32(txtIdCita.Text),
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

                diag.ActualizarDiagnostico(diagnostico);
                mensaje.Visible = true;
                mensajeError.Visible = false;
                textoMensaje.InnerHtml = "Diagnóstico Modificado correctamente";
                textoMensajeError.InnerHtml = string.Empty;
                Limpiar();

            }

           
            catch (Exception)
            {
                mensaje.Visible = false;
                mensajeError.Visible = true;
                mensajeError.InnerHtml = "No se modificó correctamente";
            }
}

        public void Limpiar()
        {

            txtIdDiagnostico.Text = "";
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
            txtIdCita.Text = "";
            txtReferencia.Text = "";
            txtIPX.Text = "";
            txtPaciente.Text = "";
        }
    }
}
