<%@ Page Title="" Language="C#" MasterPageFile="~/Formularios.Master" AutoEventWireup="true" CodeBehind="RegistroDiagnostico.aspx.cs" Inherits="SIMCIC.RegistroDiagnostico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
     <div class="alert alert-success" visible="false" id="mensaje" runat="server">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times</a>
        <strong id="textoMensaje" runat="server"></strong>
    </div>
        <div class="alert alert-danger" visible="false" id="mensajeError" runat="server">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times</a>
        <strong id="textoMensajeError" runat="server"></strong>
    </div>  
    <div class="product-screen-1 wow fadeInLeft" runat="server" data-wow-delay="0.1s" data-wow-duration="0.1s"> 
    <h3 align="center">Registro de diagnósticos</h3>
    <br />
    <div class="col-lg-12 text-center">
    <div class="row">
  <div class="col-lg-6">
        
            <table class="table-condensed"> 
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                        <asp:Label ID="lblCedulaPaciente" runat="server" Text="Cédula del paciente: " ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtCedulaPaciente" TextMode="Number"  Width="400px" Height="100px" runat="server"  placeholder="Identificador" class="form-control"></asp:TextBox>
                </tr>
                 <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                        <asp:Label ID="lblCita" runat="server" Text="Id de la cita: " ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtCita" TextMode="Number"  Width="400px" Height="100px" runat="server"  placeholder="Identificador" class="form-control"></asp:TextBox>
                </tr>
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                        <asp:Label ID="lblAPP" runat="server" Text="APP: " ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtAPP"  Width="400px" Height="100px" runat="server"  placeholder="APP" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblAPNP" runat="server" Text="APnP: " ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtAPNP" Width="400px" Height="100px" runat="server" placeholder="APnP" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblAQx" runat="server" Text="AQx: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtAQX" Width="400px" Height="100px" runat="server" placeholder="AQx" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>
                 <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblAGO" runat="server" Text="AGO: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtAGO" Width="400px" Height="100px" runat="server" placeholder="AGO" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>
                 <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblATX" runat="server" Text="ATx: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtATX" Width="400px" Height="100px" runat="server" placeholder="ATx" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                        <asp:Label ID="lblMotivo" runat="server" Text="Motivo: " ForeColor="#808080"></asp:Label></td>
                   <td>
                         <asp:TextBox ID="txtMotivo" Width="400px" Height="100px" runat="server" placeholder="Motivo" class="form-control" TextMode="MultiLine"></asp:TextBox>
                        
                </tr>

                </table>
      </div>
    
        <div class="col-lg-6">
         <table class="table-condensed">

                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblPlanMedico" runat="server" Text="Plan Médico: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtPlanMedico" Width="400px" Height="100px" runat="server" placeholder="Plan Médico" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblIncapacidad" runat="server" Text="Incapacidad: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtIncapacidad" Width="400px" Height="100px" runat="server" placeholder="Incapacidad" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>
                 <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblExFx" runat="server" Text="ExFx: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtExFx" runat="server" Width="400px" Height="100px" placeholder="ExFx" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>
                 <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblAnalisis" runat="server" Text="Análisis: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtAnalisis" runat="server" Width="400px" Height="100px" placeholder="Análisis" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>
                 <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblReferencia" runat="server" Text="Referencia: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtReferencia" runat="server" Width="400px" Height="100px" placeholder="Referencia" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>
                 <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblIPX" runat="server" Text="IPX: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtIPX" runat="server" Width="400px" Height="100px" placeholder="IPX" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>

            </table>
               </div>  
        </div>
        </div>




                         
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-md">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>         
        </div>
        <div class="modal-body">             
            <div class="col-md-12 text-center">
                <h2>IMC</h2>
             <table class="table-condensed" align="center">                
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                          <asp:Label ID="lblPesoIMC" runat="server" Text="Peso: " ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtPesoIMC" runat="server" placeholder="Kilogramos" class="form-control"></asp:TextBox>
                </tr>
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                            <asp:Label ID="lblAlturaIMC" runat="server" Text="Altura" ForeColor="#808080"></asp:Label>
                    <td>
                       <asp:TextBox ID="txtAlturaIMC"  placeholder="Metros" runat="server" class="form-control"></asp:TextBox>
                </tr>
                 <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblClasificación" runat="server" Text="Clasificación: " ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtClasificacion"  runat="server" class="form-control" ReadOnly="True" TextMode="MultiLine" ></asp:TextBox>
                </tr>
                  <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblResultadoIMC" runat="server" Text="Resultado" ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtResultadoIMC" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                </tr>
                 </table>
                  <div class="col-md-12 text-center">
                <asp:Button ID="btnCalcular" runat="server" OnClick="btnCalcular_Click" Text="Calcular" class="btn btn-form"
                       Width="120px" BorderStyle="None" Font-Bold="False" Font-Italic="False" CssClass="btn-info" ForeColor="White" Height="38px" />  
            </div>
                 </div>

            <br />
            <br />
            <div class="col-md-12 text-center">
                <h2>DOSIFICACIÓN</h2>
             <table class="table-condensed" align="center">                
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                          <asp:Label ID="lblPesoDosi" runat="server" Text="Peso" ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtPesoDosi"  runat="server" placeholder="Kilogramos" class="form-control"></asp:TextBox>
                </tr>
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                             <asp:Label ID="lblDosis" runat="server" Text="Dosis" ForeColor="#808080"></asp:Label>
                    <td>
                       <asp:TextBox ID="txtDosis"  placeholder="Miligramos" runat="server" class="form-control"></asp:TextBox>
                </tr>
                   <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                            <asp:Label ID="lblFrecuencia" runat="server" Text="Frecuencia" ForeColor="#808080"></asp:Label>
                    <td>
                       <asp:TextBox ID="txtFrecuencia"  placeholder="Frecuencia" runat="server" class="form-control"></asp:TextBox>
                </tr>
                  <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblResultadoDosi" runat="server" Text="Resultado" ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtResultadoDosi" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                </tr>
                 </table>
                  <div class="col-md-12 text-center">
                <asp:Button ID="CalcularDosificacion" OnClick="CalcularDosificacion_Click" runat="server" Text="Calcular" class="btn btn-form"
                       Width="120px" BorderStyle="None" Font-Bold="False" Font-Italic="False" CssClass="btn-info" ForeColor="White" Height="38px" />  
            </div>
                 </div>                          
        
      </div>
    </div>
  </div>
</div>                 <br />
             <div class="col-lg-12 text-center">
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click"  class="btn btn-form"
                       Width="130px" BorderStyle="None" Font-Bold="False" Font-Italic="False" CssClass="btn-info" ForeColor="White" Height="38px" />                              
            </div>
        <br />
         <div class="col-lg-12 text-center">
             <asp:Button ID="btnMantenimiento" runat="server"  Text="Mantenimiento" class="btn btn-form"
                       Width="130px" BorderStyle="None" Font-Bold="False" Font-Italic="False" CssClass="btn-warning" ForeColor="White" Height="38px" PostBackUrl="~/MantenimientoDiagnostico.aspx" /> 
            </div>
    <br />
    <div class="col-md-12 text-center">
    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal">Cálculos</button>
        </div>
        </div>
     <br />
     <br />  
</asp:Content>
