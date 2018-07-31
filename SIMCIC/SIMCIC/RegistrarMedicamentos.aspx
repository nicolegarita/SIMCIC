﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Formularios.Master" AutoEventWireup="true" CodeBehind="RegistrarMedicamentos.aspx.cs" Inherits="SIMCIC.RegistrarMedicamentos" %>
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
                        <input type="date" id="txtFecha"  runat="server" class="form-control" style="width:315px"/>
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
                        <asp:DropDownList ID="ddlCategoria" runat="server" Width="278px"  class="form-control">
                            <asp:ListItem>Línea Femenina</asp:ListItem>
                            <asp:ListItem>Estomacales</asp:ListItem>
                            <asp:ListItem>Analgésicos</asp:ListItem>
                            <asp:ListItem>Inyectables</asp:ListItem>
                        </asp:DropDownList>
                </tr>
            </table>
            <div class="col-md-12 text-center">
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" CssClass="btn btn-primary" Width="100px"/>
            <div class="col-md-12 text-right">
                <asp:Button ID="btnMantenimiento" runat="server" OnClick="btnMantenimiento_Click" Text="Mantenimiento" CssClass="btn btn-success" Width="150
                    px"/>
            </div>
            </div>

        </div>
</asp:Content>
