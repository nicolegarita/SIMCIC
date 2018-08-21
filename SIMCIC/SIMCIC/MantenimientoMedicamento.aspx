<%@ Page Title="" Language="C#" MasterPageFile="~/Formularios.Master" AutoEventWireup="true" CodeBehind="MantenimientoMedicamento.aspx.cs" Inherits="SIMCIC.MantenimientoMedicamento" %>
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
    <div id="div1" visible="true" class="product-screen-1 wow fadeInLeft" runat="server" data-wow-delay="0.1s" data-wow-duration="0.1s"> 
    <h3 align="center">Mantenimiento de Medicamentos</h3>
    <div id="duvBuscarPaciente" class="form-group" runat="server" visible="true" >
         <table class="table-condensed" align="center">
          <h3 align="center">Ingrese el nombre del medicamento por modificar</h3>      
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                        <asp:Label ID="lblNombreBuscar" runat="server" Text="Nombre del medicamento: " ForeColor="#808080" Font-Bold="True"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtNombreBuscar" runat="server" class="form-control"></asp:TextBox>
                        <td>                                                  
                             <asp:Button ID="btnBuscar" OnClick="btnBuscar_Click" runat="server" Text="Buscar" class="btn btn-form"
                       Width="130px" BorderStyle="None" Font-Bold="False" Font-Italic="False" CssClass="btn-info" ForeColor="White" Height="38px" />
                </tr>
             </table>
     
        </div>
     <div id="divEncuentraInfo" visible="true" class="form-group" runat="server">
            <table class="table-condensed" align="center">               
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
                        <asp:TextBox ID="txtCantidad" runat="server" TextMode="Number" placeholder="Cantidad" class="form-control" ></asp:TextBox>
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
                        <asp:DropDownList ID="ddlSexo" runat="server" Width="278px"  class="form-control">
                            <asp:ListItem>Línea Femenina</asp:ListItem>
                            <asp:ListItem>Estomacales</asp:ListItem>
                            <asp:ListItem>Analgésicos</asp:ListItem>
                            <asp:ListItem>Inyectables</asp:ListItem>
                        </asp:DropDownList>
                </tr>
            </table>
            <div class="col-md-12 text-center">
                <asp:Button ID="btnModificar" OnClick="btnModificar_Click" runat="server" Text="Modificar"  class="btn btn-form"
                       Width="130px" BorderStyle="None" Font-Bold="False" Font-Italic="False" CssClass="btn-warning" ForeColor="White" Height="38px" />
            </div>

        </div>
        </div>

</asp:Content>
