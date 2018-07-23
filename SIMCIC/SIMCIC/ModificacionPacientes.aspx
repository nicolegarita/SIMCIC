<%@ Page Title="" Language="C#" MasterPageFile="~/Formularios.Master" AutoEventWireup="true" CodeBehind="ModificacionPacientes.aspx.cs" Inherits="SIMCIC.ModificacionPacientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
    <div id="divBuscaPaciente" class="form-group" runat="server" visible="true" >
            <table class="table-condensed" align="center">
                <h4 align="center">Ingrese la cédula del paciente a modificar</h4>
                <tr
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                        <asp:Label ID="lblCedulaBuscar" runat="server" Text="Cédula del paciente: " ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtCedulaBuscar" runat="server" placeholder="Cédula" class="form-control"></asp:TextBox>
                </tr>
            </table>
            <div class="btn-group">
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" CssClass="btn btn-primary" Width="100px"/>
            </div>
        </div>

     <div id="divEncuentraPaciente" class="form-group" runat="server" visible="false" >
            <table class="table-condensed" align="center">
                <h3 align="center">Modificación de Pacientes</h3>
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                        <asp:Label ID="lblCedula" runat="server" Text="Cédula del paciente: " ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtCedula" runat="server" placeholder="Cédula" class="form-control" Enabled="false"></asp:TextBox>
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
                        <asp:DropDownList ID="ddlSexo" runat="server" Width="278px" CssClass="control-label">
                            <asp:ListItem>Femenino</asp:ListItem>
                            <asp:ListItem>Masculino</asp:ListItem>
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
            <div class="btn-group">
                <asp:Button ID="btnModificar" runat="server" Text="Modificar" OnClick="btnModificar_Click" CssClass="btn btn-warning" Width="100px"/>
            </div>
        </div>
        </form>
</asp:Content>
