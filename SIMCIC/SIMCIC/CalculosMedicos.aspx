<%@ Page Title="" Language="C#" MasterPageFile="~/Formularios.Master" AutoEventWireup="true" CodeBehind="CalculosMedicos.aspx.cs" Inherits="SIMCIC.CalculosMedicos" %>
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
    <div class="product-screen-1 wow fadeInLeft" data-wow-delay="0.1s" data-wow-duration="0.1s">              
                    
        <div class="col-md-12 text-center">
             <div class="row">
  <div class="col-lg-6">
                <h2>IMC</h2>
             <table class="table-condensed" align="center">                
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                          <asp:Label ID="lblPesoIMC" runat="server" Text="Peso: " ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtPesoIMC" TextMode="Number" runat="server" placeholder="Kilogramos" class="form-control"></asp:TextBox>
                </tr>
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                            <asp:Label ID="lblAlturaIMC" runat="server" Text="Altura" ForeColor="#808080"></asp:Label>
                    <td>
                       <asp:TextBox ID="txtAlturaIMC" TextMode="Number" step="any"  placeholder="Metros" runat="server" class="form-control"></asp:TextBox>
                </tr>
                  <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblResultadoIMC" runat="server" Text="Resultado" ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtResultadoIMC" TextMode="Number" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                </tr>
                 <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblClasificación" runat="server" Text="Clasificación: " ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtClasificacion"  runat="server" class="form-control" ReadOnly="True" TextMode="MultiLine" ></asp:TextBox>
                </tr>
                 </table>
      <br />

                  <div class="col-lg-14 text-center">
                <asp:Button ID="btnCalcular" runat="server" Text="Calcular"  class="btn btn-form"
                       Width="120px" BorderStyle="None" Font-Bold="False" Font-Italic="False" CssClass="btn-info" ForeColor="White" Height="38px" OnClick="btnCalcular_Click"/>  
            </div>
                 </div>
                          
                 <div class="col-lg-4">
                <h2>DOSIFICACIÓN</h2>
             <table class="table-condensed" align="center">                
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                          <asp:Label ID="lblPesoDosi" runat="server" Text="Peso" ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtPesoDosi" TextMode="Number" runat="server" placeholder="Kilogramos" class="form-control"></asp:TextBox>
                </tr>
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                             <asp:Label ID="lblDosis" runat="server" Text="Dosis" ForeColor="#808080"></asp:Label>
                    <td>
                       <asp:TextBox ID="txtDosis" TextMode="Number"  placeholder="Miligramos" runat="server" class="form-control"></asp:TextBox>
                </tr>
                   <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                            <asp:Label ID="lblFrecuencia" runat="server" Text="Frecuencia" ForeColor="#808080"></asp:Label>
                    <td>
                       <asp:TextBox ID="txtFrecuencia" TextMode="Number"  placeholder="Frecuencia" runat="server" class="form-control"></asp:TextBox>
                </tr>
                  <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblResultadoDosi" runat="server" Text="Resultado" ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtResultadoDosi" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                </tr>
                 </table>
                  <div class="col-lg-14 text-center">
                <asp:Button ID="CalcularDosificacion" runat="server" Text="Calcular" OnClick="CalcularDosificacion_Click"   class="btn btn-form"
                       Width="120px" BorderStyle="None" Font-Bold="False" Font-Italic="False" CssClass="btn-info" ForeColor="White" Height="38px" />  
            </div>
                 </div>                          
         </div>
             </div>
    
    </div>   
    <br />
    <br />
</asp:Content>



