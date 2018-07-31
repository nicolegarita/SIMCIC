<%@ Page Title="" Language="C#" MasterPageFile="~/Formularios.Master" AutoEventWireup="true" CodeBehind="RegistroDiagnostico.aspx.cs" Inherits="SIMCIC.RegistroDiagnostico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="container ">           
            <table class="table-condensed" align="center">
                <h3 align="center">Registro de diagnósticos</h3>
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                        <asp:Label ID="lblAPP" runat="server" Text="APP: " ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtAPP" runat="server" placeholder="APP" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblAPNP" runat="server" Text="APnP: " ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtAPNP" runat="server" placeholder="APnP" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblAQx" runat="server" Text="AQx: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtAQX" runat="server" placeholder="AQx" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>
                 <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblAGO" runat="server" Text="AGO: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtAGO" runat="server" placeholder="AGO" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>
                 <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblATX" runat="server" Text="ATx: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtATX" runat="server" placeholder="ATx" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                        <asp:Label ID="lblMotivo" runat="server" Text="Motivo: " ForeColor="#808080"></asp:Label></td>
                   <td>
                         <asp:TextBox ID="txtMotivo" runat="server" placeholder="Motivo" class="form-control" TextMode="MultiLine"></asp:TextBox>
                        
                </tr>
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblPlanMedico" runat="server" Text="Plan Médico: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtPlanMedico" runat="server" placeholder="Plan Médico" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblIncapacidad" runat="server" Text="Incapacidad: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtIncapacidad" runat="server" placeholder="Incapacidad" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>
                 <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblExFx" runat="server" Text="ExFx: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtExFx" runat="server" placeholder="ExFx" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>
                 <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblAnalisis" runat="server" Text="Análisis: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtAnalisis" runat="server" placeholder="Análisis" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>
                 <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblReferencia" runat="server" Text="Referencia: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtReferencia" runat="server" placeholder="Referencia" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>
                 <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblIPX" runat="server" Text="IPX: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtIPX" runat="server" placeholder="IPX" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>

            </table>
               </div>   
        <div class="container">
  <h2></h2>
          
  <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">Cálculos</button>
                
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Cálculos</h4>
        </div>
        <div class="modal-body">          
            <div class="inner-form">
                <p>IMC</p>
                <asp:Label ID="lblPesoIMC" runat="server" Text="Peso" ForeColor="#808080"></asp:Label>
                <br />
                <div class="input-group">                   
                    <asp:TextBox ID="txtPesoIMC" runat="server" placeholder="Kilogramos" class="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="inner-form">
                <asp:Label ID="lblAlturaIMC" runat="server" Text="Altura" ForeColor="#808080"></asp:Label>
                <br />
                <div class="input-group">                   
                    <asp:TextBox ID="txtAlturaIMC"  placeholder="Metros" runat="server" class="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="inner-form">
                <asp:Label ID="lblResultadoIMC" runat="server" Text="Resultado" ForeColor="#808080"></asp:Label>
                <br />
                <div class="input-group">                   
                    <asp:TextBox ID="txtResultadoIMC" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                </div>
            </div>
              <br />
              <br />
            <div class="btn-group">
                <asp:Button ID="btnCalcular" runat="server" Text="Calcular"  CssClass="btn btn-primary" Width="100px"/>
            </div>


             <div class="inner-form">
                <p>Dosificación</p>
                <asp:Label ID="lblPesoDosi" runat="server" Text="Peso" ForeColor="#808080"></asp:Label>
                <br />
                <div class="input-group">                   
                    <asp:TextBox ID="txtPesoDosi" runat="server" placeholder="Kilogramos" class="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="inner-form">
                <asp:Label ID="lblDosis" runat="server" Text="Dosis" ForeColor="#808080"></asp:Label>
                <br />
                <div class="input-group">                   
                    <asp:TextBox ID="txtDosis"  placeholder="Miligramos" runat="server" class="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="inner-form">
                <asp:Label ID="lblFrecuencia" runat="server" Text="Frecuencia" ForeColor="#808080"></asp:Label>
                <br />
                <div class="input-group">                   
                    <asp:TextBox ID="txtFrecuencia"  placeholder="Frecuencia" runat="server" class="form-control"></asp:TextBox>
                </div>
            </div>
             <div class="inner-form">
                <asp:Label ID="lblResultadoDosi" runat="server" Text="Resultado" ForeColor="#808080"></asp:Label>
                <br />
                <div class="input-group">                   
                    <asp:TextBox ID="txtResultadoDosi" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                </div>
            </div>
            <br />
              <br />
             <div class="btn-group">
                <asp:Button ID="btnCalcularDosi" runat="server" Text="Calcular"  CssClass="btn btn-primary" Width="100px"/>
            </div>
             

      
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
    </div>
  </div>
</div>                    
                   <div class="col-md-12 text-center">
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar"  CssClass="btn btn-primary" Width="100px"/>
             <div class="col-md-12 text-right">
                <asp:Button ID="btnMantenimiento" runat="server" OnClick="btnMantenimiento_Click" Text="Mantenimiento" CssClass="btn btn-success" Width="150
                    px"/>
            </div>
                       </div>
        </div>
     <br />
     <br />  
</asp:Content>
