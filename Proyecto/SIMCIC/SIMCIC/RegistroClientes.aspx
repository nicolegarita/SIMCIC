<%@ Page Title="" Language="C#" MasterPageFile="~/Formularios.Master" AutoEventWireup="true" CodeBehind="RegistroClientes.aspx.cs" Inherits="SIMCIC.RegistroClientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Registro de pacientes</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="divClientes" class="form-group" runat="server" visible="true" >
            <table class="table-condensed" align="center">
                <h3 align="center">Registro de pacientes</h3>
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
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar"  CssClass="btn btn-primary" Width="100px"/>
            </div>
        </div>
</asp:Content>
