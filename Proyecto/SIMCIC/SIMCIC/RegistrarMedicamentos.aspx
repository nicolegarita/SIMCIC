<%@ Page Title="" Language="C#" MasterPageFile="~/Formularios.Master" AutoEventWireup="true" CodeBehind="RegistrarMedicamentos.aspx.cs" Inherits="SIMCIC.RegistrarMedicamentos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="divClientes" class="form-group" runat="server" visible="true" >
            <table class="table-condensed" align="center">
                <h3 align="center">Registro de medicamentos</h3>
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                        <asp:Label ID="lblNombre" runat="server" Text="Nombre del medicamento: " ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtNombre" runat="server" placeholder="Nombre" class="form-control"></asp:TextBox>
                </tr>
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblCantidad" runat="server" Text="Cantidad disponible: " ForeColor="#808080" type="int"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtCantidad" runat="server" placeholder="Cantidad" class="form-control" type="number"></asp:TextBox>
                </tr>
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblSuministracion" runat="server" Text="Forma de suministrar: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtSuministracion" runat="server" placeholder="Suministración" class="form-control"></asp:TextBox>
                </tr>
                 <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblFechaVencimiento" runat="server" Text="Fecha de vencimiento: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtFechaVencimiento" runat="server" placeholder="Fecha" class="form-control"></asp:TextBox>
                </tr>
                 <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblDosisAdulto" runat="server" Text="Dosis para adultos: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtDosisAdulto" runat="server" placeholder="Dosis" class="form-control"></asp:TextBox>
                </tr>
                 <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblDosisNiños" runat="server" Text="Dosis para niños: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtDosisNiños" runat="server" placeholder="Dosis" class="form-control"></asp:TextBox>
                </tr>
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                        <asp:Label ID="lblCategoria" runat="server" Text="Categoría del medicamento: " ForeColor="#808080"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="ddlSexo" runat="server" Width="278px"  class="form-control">
                            <asp:ListItem>Línea Femenina</asp:ListItem>
                            <asp:ListItem>Estomacales</asp:ListItem>
                            <asp:ListItem>Analgésicos</asp:ListItem>
                            <asp:ListItem>Inyectables</asp:ListItem>
                        </asp:DropDownList>
                </tr>
            </table>
            <div class="col-md-12 text-center">
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar"  CssClass="btn btn-primary" Width="100px"/>
            </div>
        </div>
</asp:Content>
