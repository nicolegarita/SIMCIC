<%@ Page Title="" Language="C#" MasterPageFile="~/Formularios.Master" AutoEventWireup="true" CodeBehind="MantenimientoPacientes.aspx.cs" Inherits="SIMCIC.MantenimientoPacientes" %>
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

    <h3 align="center">Mantenimiento de Pacientes</h3>
    <div id="duvBuscarPaciente" class="form-group" runat="server" visible="true" >
         <table class="table-condensed" align="center">
          <h3 align="center">Ingrese la cédula del paciente a modificar</h3>      
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                        <asp:Label ID="lblCedulaBuscar" runat="server" Text="Cédula del paciente: " ForeColor="#808080" Font-Bold="True"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtCedulaBuscar" runat="server" class="form-control"></asp:TextBox>
                        <td>                                                  
                             <asp:Button ID="btnBuscar" OnClick="btnBuscar_Click" runat="server" Text="Buscar"  CssClass="btn btn-primary"  Width="100px"/>
                </tr>
             </table>
     
        </div>
    <div id="divEncuentraPaciente" class="form-group" runat="server" visible="true" >
            <table class="table-condensed" align="center">
           
                
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                        <asp:Label ID="lblCedula" runat="server" Text="Cédula del paciente: " ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtCedula" runat="server" placeholder="Cédula" class="form-control"></asp:TextBox>
                </tr>
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblNombre" runat="server" Text="Nombre del paciente: " ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtNombre" runat="server" placeholder="Nombre" class="form-control"></asp:TextBox>
                </tr>
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblApellidos" runat="server" Text="Apellidos del paciente: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtApellidos" runat="server" placeholder="Apellidos" class="form-control"></asp:TextBox>
                </tr>
                 <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblFechaNacimiento" runat="server" Text="Fecha de nacimiento: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtFechaNacimiento" runat="server" placeholder="Fecha" class="form-control"></asp:TextBox>
                </tr>
                 <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblEdad" runat="server" Text="Edad del paciente: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtEdad" runat="server" placeholder="Edad" class="form-control"></asp:TextBox>
                </tr>
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                        <asp:Label ID="lblSexo" runat="server" Text="Sexo: " ForeColor="#808080"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="ddlSexo" runat="server" Width="278px" class="form-control">
                            <asp:ListItem>Femenino</asp:ListItem>
                            <asp:ListItem>Masculino</asp:ListItem>
                            <asp:ListItem>Otro</asp:ListItem>
                        </asp:DropDownList>
                </tr>
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblTelefono" runat="server" Text="Teléfono de contacto: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtTelefono" runat="server" placeholder="Teléfono" class="form-control"></asp:TextBox>
                </tr>
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblCorreo" runat="server" Text="Correo electrónico: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtCorreo" runat="server" placeholder="Correo" class="form-control" type="email"></asp:TextBox>
                </tr>
                 <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblOcupacion" runat="server" Text="Ocupación del paciente: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtOcupacion" runat="server" placeholder="Ocupación" class="form-control"></asp:TextBox>
                </tr>
            </table>
           <div class="col-md-12 text-center">
                <asp:Button ID="btnModificar" OnClick="btnModificar_Click" runat="server" Text="Modificar"  CssClass="btn btn-warning" Width="100px"/>
            </div>
        </div>

</asp:Content>
