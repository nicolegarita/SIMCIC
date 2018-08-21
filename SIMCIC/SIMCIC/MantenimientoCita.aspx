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
   <div id="divBusqueda" class="product-screen-1 wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="0.1s" runat="server" visible="true" >  
         
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
                        <asp:TextBox ID="txtFechaBuscar" runat="server" TextMode="Date" class="form-control"></asp:TextBox>
                </tr>
               <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="Label2" runat="server" Text="Cedula Médico: " ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtMedicoBuscar" placeholder="Cédula" runat="server" TextMode="Number" class="form-control"></asp:TextBox>
                </tr>
             </table>
         <div class="col-md-12 text-center">
                <asp:Button ID="btnBuscarFecha" OnClick="btnBuscarFecha_Click" runat="server" Text="Buscar"  class="btn btn-form"
                       Width="130px" BorderStyle="None" Font-Bold="False" Font-Italic="False" CssClass="btn-info" ForeColor="White" Height="38px" />
            </div>
        </div>
        
 
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
                                    <td>No existen registro, digite los datos de nuevo.</td>
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
                                            <asp:Label ID="lblID" ForeColor="Black" runat="server" Text='<%#:Item.IdCita%>' Visible="false" />
                                        </td>
                                    </tr>
                                    <td>
                                        <asp:Label ID="lblPaciente"  ForeColor="Black" Text="Paciente:" runat="server" Font-Bold="True" ></asp:Label>
                                    </td>

                                    <td>
                                        <asp:Label ID="lbPaciente" runat="server"  ForeColor="Black" Text='<%#:Item.NombrePaciente%>'></asp:Label>
                                    </td>
                                    </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblFecha" Text="Fecha:" runat="server"  ForeColor="Black" Font-Bold="True" ></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lbFecha" runat="server"  ForeColor="Black" Text='<%#:Item.Fecha%>'></asp:Label>
                                </td>
                            </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblHora" Text="Hora:"  ForeColor="Black" runat="server" Font-Bold="True" ></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="LbHora" runat="server"  ForeColor="Black" Text='<%#:Item.Hora%>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblTelefono" Text="Telefono:"  ForeColor="Black" runat="server" Font-Bold="True" ></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="LbTelefono" runat="server"  ForeColor="Black" Text='<%#:Item.Telefono%>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblMedico" Text="Médico:"  ForeColor="Black" runat="server" Font-Bold="True" ></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="LbMedico" runat="server"  ForeColor="Black" Text='<%#:Item.CedulaMedico%>'></asp:Label>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <asp:Button ID="btnModificar" runat="server" class="btn btn-form"
                       Width="130px" BorderStyle="None" Font-Bold="False" Font-Italic="False" CssClass="btn-warning" ForeColor="White" Height="38px" 
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
                        <asp:TextBox ID="txtId" runat="server" TextMode="Number" ReadOnly="true" class="form-control"></asp:TextBox>
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
                         <asp:TextBox ID="txttelefono" runat="server" TextMode="Number" placeholder="Telefono" class="form-control"></asp:TextBox>
                </tr>
                       
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblCedulaMedico" runat="server" Text="Cédula del médico " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtCedulaMedico" runat="server" TextMode="Number" class="form-control" ReadOnly="True"></asp:TextBox>
                </tr>
                 
            </table>

            <div class="col-md-12 text-center">
                <asp:Button ID="btnModificar" runat="server" Text="Modificar" OnClick="btnModificar_Click" class="btn btn-form"
                       Width="130px" BorderStyle="None" Font-Bold="False" Font-Italic="False" CssClass="btn-warning" ForeColor="White" Height="38px" />
            </div>
        <br />
          <div class="col-md-12 text-center">
                <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" Text="Eliminar" class="btn btn-form"
                       Width="130px" BorderStyle="None" Font-Bold="False" Font-Italic="False" CssClass="btn-danger" ForeColor="White" Height="38px" />
            </div>
        </div>

</asp:Content>
