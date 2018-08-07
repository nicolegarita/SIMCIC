<%@ Page Title="" Language="C#" MasterPageFile="~/Formularios.Master" AutoEventWireup="true" CodeBehind="MantenimientoCita.aspx.cs" Inherits="SIMCIC.MantenimientoCita" %>
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
    <h3 align="center">Mantenimiento de citas</h3>   
    <div id="divBusqueda" class="form-group" runat="server" visible="true" >

         
         <div class="col-md-12 text-center">
               <h4 align="center">Criterios de busqueda:</h4> 
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
               <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="Label2" runat="server" Text="Cedula Médico: " ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtMedicoBuscar" placeholder="Cédula" runat="server" TextMode="number" class="form-control"></asp:TextBox>
                </tr>
             </table>
         <div class="col-md-12 text-center">
                <asp:Button ID="btnBuscarFecha" OnClick="btnBuscarFecha_Click" runat="server" Text="Buscar"  CssClass="btn btn-primary" Width="100px"/>
            </div>
        </div>
        
 <%--   <div id="divTelefonoBuscar" class="form-group" runat="server" visible="true" >

         <table class="table-condensed" align="center">
          <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblTelefonoBucar" runat="server" Text="Telefono: " ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtTtelefonoBuscar" placeholder="Telefono" runat="server" TextMode="number" class="form-control"></asp:TextBox>
                </tr>
             </table>
         <div class="col-md-12 text-center">
                <asp:Button ID="btnBuscarTelefono" OnClick="btnBuscarTelefono_Click" runat="server" Text="Buscar"  CssClass="btn btn-primary" Width="100px"/>
            </div>
        </div>--%>
<h3 align="center">Lista de citas</h3>
      <div class="form-group">
                    <div class="col-md-3">
                        <p class="bold text-center" style="font-weight: bold; color: #FFFFFF; font-size: large; position: relative; float: inherit;">
                            Gestión de Citas
                        </p>

                    </div>
                    <asp:ListView ID="lvCitas" runat="server"
                        GroupItemCount="2"
                        ItemType="SIMCIC.DATA.Cita" DataKeyNames="IdCita">
                        <EmptyDataTemplate>
                            <table>
                                <tr>
                                    <td>No data was returned.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <EmptyItemTemplate>
                            <td />
                        </EmptyItemTemplate>
                        <GroupTemplate>
                            <tr id="itemPlaceholderContainer" runat="server">
                                <td id="itemPlaceholder" runat="server"></td>
                            </tr>
                        </GroupTemplate>
                        <ItemTemplate>
                            <td runat="server">
                                <table align="center" class=" table-condensed">

                                    <tr>
                                        <td>
                                            <asp:Label ID="lblID" runat="server" Text='<%#:Item.IdCita%>' Visible="false" />
                                        </td>
                                    </tr>
                                    <td>
                                        <asp:Label ID="lblPaciente" Text="Paciente:" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
                                    </td>

                                    <td>
                                        <asp:Label ID="lbPaciente" runat="server" ForeColor="White" Text='<%#:Item.NombrePaciente%>'></asp:Label>
                                    </td>
                                    </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblFecha" Text="Fecha:" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lbFecha" runat="server" ForeColor="White" Text='<%#:Item.Fecha%>'></asp:Label>
                                </td>
                            </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblHora" Text="Hora:" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="LbHora" runat="server" ForeColor="White" Text='<%#:Item.Hora%>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblTelefono" Text="Telefono:" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="LbTelefono" runat="server" ForeColor="White" Text='<%#:Item.Telefono%>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblMedico" Text="Médico:" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="LbMedico" runat="server" ForeColor="White" Text='<%#:Item.CedulaMedico%>'></asp:Label>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <asp:Button ID="btnModificar" runat="server" CssClass="btn btn-success btn-group"
                                                Text="Modificar" CommandArgument='<%#Container.DataItemIndex %>'
                                                CommandName="mod" OnCommand="btnModificar_Command" />
                                        </td>
                                    </tr>
                                </table>

                            </td>
                        </ItemTemplate>

                        <LayoutTemplate>
                            <table style="width: 100%;">
                                <tbody>
                                    <tr>
                                        <td>
                                            <table id="groupPlaceholderContainer" runat="server" style="width: 100%">
                                                <tr id="groupPlaceholder"></tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                    </tr>
                                    <tr></tr>
                                </tbody>
                            </table>
                        </LayoutTemplate>
                    </asp:ListView>
                </div>

    <div id="divCitas" class="form-group" runat="server" visible="true" >
            <table class="table-condensed" align="center">              
               <br />
                 <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="Label1" runat="server" Text="Id de Cita: " ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtId" runat="server" ReadOnly="true" class="form-control"></asp:TextBox>
                </tr>
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
                <asp:Button ID="btnModificar" runat="server" Text="Modificar" OnClick="btnModificar_Click"  CssClass="btn btn-warning" Width="100px"/>
            </div>
        <br />
          <div class="col-md-12 text-center">
                <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" Text="Eliminar"  CssClass="btn btn-danger" Width="100px"/>
            </div>
        </div>

</asp:Content>