<%@ Page Title="" Language="C#" MasterPageFile="~/Formularios.Master" AutoEventWireup="true" CodeBehind="RegistroCita.aspx.cs" Inherits="SIMCIC.RegistroCita" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Registro citas</title>
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
    <div id="divCitas" visible="true" class="product-screen-1 wow fadeInLeft" runat="server" data-wow-delay="0.1s" data-wow-duration="0.1s">  
            <table class="table-condensed" align="center">
                <h3 align="center">Registro de citas</h3>
                <br />
                    <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblFecha" runat="server" Text="Fecha: " ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtFecha" runat="server" TextMode="Date"  class="form-control"></asp:TextBox>
                </tr>
                
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblHora" runat="server" Text="Hora: " ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtHora" runat="server" TextMode="Time" class="form-control"></asp:TextBox>
                </tr>
                
              
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblNombre" runat="server" Text="Nombre del paciente: " ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtNombre" runat="server" placeholder="Nombre" class="form-control"></asp:TextBox>
                </tr>
                
                 <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblTelefono" runat="server" Text="Telefono: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txttelefono" TextMode="Number" runat="server" placeholder="Telefono" class="form-control"></asp:TextBox>
                </tr>
                       
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblCedulaMedico" runat="server" Text="Cédula del médico " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtCedulaMedico" runat="server" TextMode="Number" class="form-control" ReadOnly="false"></asp:TextBox>
                </tr>
                 
            </table>
        <br />
             <div class="col-lg-12 text-center">
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click"  class="btn btn-form"
                       Width="130px" BorderStyle="None" Font-Bold="False" Font-Italic="False" CssClass="btn-info" ForeColor="White" Height="38px" />                              
            </div>
        <br />
         <div class="col-lg-12 text-center">
             <asp:Button ID="btnMantenimiento" runat="server"  Text="Mantenimiento" class="btn btn-form"
                       Width="130px" BorderStyle="None" Font-Bold="False" Font-Italic="False" CssClass="btn-warning" ForeColor="White" Height="38px" PostBackUrl="~/MantenimientoCita.aspx" /> 
            </div>
        </div>
</asp:Content>
