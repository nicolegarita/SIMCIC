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
    <div id="divCitas" class="form-group" runat="server" visible="true" >
            <table class="table-condensed" align="center">
                <h3 align="center">Registro de citas</h3>
                <br />
                  <tr>
                    <td>
                        <asp:Label ID="lblFecha" runat="server" Text="Fecha: " Font-Bold="True" ForeColor="White"></asp:Label></td>
                    <td class="auto-style1">
                        <input type="date" id="txtFecha"  runat="server" style="width:315px"/>
                        </td>
                    
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
                         <asp:TextBox ID="txtCedulaMedico" runat="server" class="form-control" ReadOnly="false"></asp:TextBox>
                </tr>
                 
            </table>

            <div class="col-md-12 text-center">
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click"  CssClass="btn btn-primary" Width="100px"/>
            <div class="col-md-12 text-right">
                <asp:Button ID="btnMantenimiento" runat="server" OnClick="btnMantenimiento_Click" Text="Mantenimiento" CssClass="btn btn-success" Width="150
                    px"/>
            </div>
            </div>
        </div>
</asp:Content>
