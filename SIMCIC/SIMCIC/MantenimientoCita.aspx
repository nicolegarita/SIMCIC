<%@ Page Title="" Language="C#" MasterPageFile="~/Formularios.Master" AutoEventWireup="true" CodeBehind="MantenimientoCita.aspx.cs" Inherits="SIMCIC.MantenimientoCita" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <h3 align="center">Mantenimiento de citas</h3>   
    <div id="divBusqueda" class="form-group" runat="server" visible="true" >

         <table class="table-condensed" align="center">
         <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                        <asp:Label ID="lblCategoria" runat="server" Text="Criterio de Busqueda: " ForeColor="#808080"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="ddlSexo" runat="server" Width="278px"  class="form-control">
                            <asp:ListItem>Fecha</asp:ListItem>
                            <asp:ListItem>Telefono</asp:ListItem>                         
                        </asp:DropDownList>                                              
                </tr>
             </table>
         <div class="col-md-12 text-center">
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar"  CssClass="btn btn-primary" Width="100px"/>
            </div>
        </div>

     <div id="divBuscarFecha" class="form-group" runat="server" visible="true" >

         <table class="table-condensed" align="center">
          <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblBuscarFecha" runat="server" Text="Fecha: " ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtFechaBuscar" runat="server" TextMode="date" class="form-control"></asp:TextBox>
                </tr>
             </table>
         <div class="col-md-12 text-center">
                <asp:Button ID="btnBuscarFecha" runat="server" Text="Buscar"  CssClass="btn btn-primary" Width="100px"/>
            </div>
        </div>

    <div id="divTelefonoBuscar" class="form-group" runat="server" visible="true" >

         <table class="table-condensed" align="center">
          <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblTelefonoBucar" runat="server" Text="Telefono: " ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtTtelefonoBuscar" placeholder="Telefono" runat="server" TextMode="number" class="form-control"></asp:TextBox>
                </tr>
             </table>
         <div class="col-md-12 text-center">
                <asp:Button ID="btnBuscarTelefono" runat="server" Text="Buscar"  CssClass="btn btn-primary" Width="100px"/>
            </div>
        </div>
<h3 align="center">Lista de citas</h3>


    <div id="divCitas" class="form-group" runat="server" visible="true" >
            <table class="table-condensed" align="center">              
               <br />
                  <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblFecha" runat="server" Text="Fecha: " ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtFecha" runat="server" TextMode="date" class="form-control"></asp:TextBox>
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
                         <asp:Label ID="lblApellidos" runat="server" Text="Apellidos del paciente: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtApellidos" runat="server" placeholder="Apellidos" class="form-control"></asp:TextBox>
                </tr>
                 <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblTelefono" runat="server" Text="Telefono: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txttelefono" runat="server" placeholder="Telefono" class="form-control"></asp:TextBox>
                </tr>
                       
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblCedulaMedico" runat="server" Text="Cédula del médico " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtCedulaMedico" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                </tr>
                 
            </table>

            <div class="col-md-12 text-center">
                <asp:Button ID="btnModificar" runat="server" Text="Modificar"  CssClass="btn btn-warning" Width="100px"/>
            </div>
        <br />
          <div class="col-md-12 text-center">
                <asp:Button ID="btnEliminar" runat="server" Text="Eliminar"  CssClass="btn btn-danger" Width="100px"/>
            </div>
        </div>

</asp:Content>
