<%@ Page Title="" Language="C#" MasterPageFile="~/Formularios.Master" AutoEventWireup="true" CodeBehind="RegistroCita.aspx.cs" Inherits="SIMCIC.RegistroCita" %>
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

    <form runat="server">
        <div id="divMedico" class="form-group" runat="server" visible="true">
            <table class="table-condensed" align="center">
                
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                        <asp:Label ID="lblCedula" runat="server" Text="Cédula del médico: " ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtCedula" runat="server" placeholder="Cédula" class="form-control"></asp:TextBox>
                </tr>

                 <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                        <asp:Label ID="lbFecha" runat="server" Text="Fecha: " ForeColor="#808080"></asp:Label>
                    <td>


                    <td>
                        <asp:TextBox ID="txtFecha" runat="server" Width="400px" TextMode="Date"></asp:TextBox></td>
                </tr>

                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                        <asp:Label ID="lblHora" runat="server" Text="Hora: " ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtHora" runat="server" TextMode="Time" class="form-control"></asp:TextBox>
                </tr>


                <tr>

            </table>
            <div class="btn-group">
                <asp:Button ID="btnContinuar" runat="server" Text="Continuar" OnClick="btnContinuar_Click" CssClass="btn btn-primary" Width="100px" />
            </div>
        </div>

        <div id="divCitas" class="form-group" runat="server" visible="false">
            <table class="table-condensed" align="center">
                <h3 align="center">Registro de citas</h3>

               
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                        <asp:Label ID="lblNombre" runat="server" Text="Nombre completo del paciente: " ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtNombre" runat="server" placeholder="Nombre completo" class="form-control"></asp:TextBox>
                </tr>
                
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                        <asp:Label ID="lblTelefono" runat="server" Text="Telefono: " ForeColor="#808080"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtTelefono" runat="server" placeholder="Telefono" class="form-control"></asp:TextBox>
                </tr>

                <%--<tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                        <asp:Label ID="lblCedulaMedico" runat="server" Text="Cédula del médico " ForeColor="#808080"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtCedulaMedico" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                </tr>--%>

            </table>

            <div class="btn-group">
                <asp:Button ID="btnGuardar" runat="server" OnClick="btnGuardar_Click" Text="Guardar" CssClass="btn btn-primary" Width="100px" />
            </div>
        </div>
    </form>


</asp:Content>