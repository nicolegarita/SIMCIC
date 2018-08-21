<%@ Page Title="" Language="C#" MasterPageFile="~/Formularios.Master" AutoEventWireup="true" CodeBehind="MantenimientoDiagnostico.aspx.cs" Inherits="SIMCIC.MantenimientoDiagnostico" %>

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

    <h3 align="center">Mantenimiento de diagnósticos</h3>
    <div id="divBusqueda" class="product-screen-1 wow fadeInUp" runat="server" visible="true" data-wow-delay="0.1s" data-wow-duration="0.1s">
        <div class="col-md-12 text-center">
            <h4 align="center">Criterio de Búsqueda</h4>
        </div>
    </div>
    <div id="divBuscarPaciente" class="form-group" runat="server" visible="true">

        <table class="table-condensed" align="center">
            <tr>
                <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                    <asp:Label ID="lblBuscarPaciente" runat="server" Text="Cédula del paciente: " ForeColor="#808080"></asp:Label>

                </td>
                <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                    <asp:TextBox ID="txtCedulaPaciente" TextMode="Number" runat="server" placeholder="Cédula" class="form-control"></asp:TextBox>

                </td>

            </tr>
        </table>
        <div class="col-md-12 text-center">
            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" class="btn btn-form"
                Width="130px" BorderStyle="None" Font-Bold="False" Font-Italic="False" CssClass="btn-info" ForeColor="White" Height="38px" />
        </div>

    </div>

    <div class="form-group">

        <div class="col-md-3">
            <p class="bold text-center" style="font-weight: bold; color: #FFFFFF; font-size: large; position: relative; float: inherit;">
                Gestión de Diagnósticos
            </p>

        </div>
        <asp:ListView ID="lvDiagnosticos" runat="server"
            GroupItemCount="2"
            ItemType="SIMCIC.DATA.Diagnostico" DataKeyNames="IdDiagnostico">
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
                            <asp:Label ID="lblDiagnostico" ForeColor="Black" Text="N° de diagnóstico:" runat="server" Font-Bold="True"></asp:Label>
                        </td>
                            <td>
                                <asp:Label ID="lblID" ForeColor="Black" runat="server" Text='<%#:Item.IdDiagnostico%>' />
                            </td>
                        </tr>
                        <td>
                            <asp:Label ID="lblPacienteL" ForeColor="Black" Text="Cita:" runat="server" Font-Bold="True"></asp:Label>
                        </td>

                        <td>
                            <asp:Label ID="lbPaciente" runat="server" ForeColor="Black" Text='<%#:Item.IdCita%>'></asp:Label>
                        </td>
                        </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblCita" Text="Paciente:" runat="server" ForeColor="Black" Font-Bold="True"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lbCita" runat="server" ForeColor="Black" Text='<%#:Item.IdPaciente%>'></asp:Label>
                                </td>
                            </tr>

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

    <div id="divMantenimiento" runat="server" visible="false"> 


        <div class="col-lg-12 text-center">
            <div class="row">
                <div class="col-lg-6">

                    <table class="table-condensed">

                        <tr>
                            <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                                <asp:Label ID="lblIdDiagnostico" runat="server" Text="Diagnóstico: " ForeColor="#808080"></asp:Label>
                            <td>
                                <asp:TextBox ID="txtIdDiagnostico" TextMode="Number" runat="server" ReadOnly="true" class="form-control"></asp:TextBox>
                        </tr>

                        <tr>
                            <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                                <asp:Label ID="lblPaciente" runat="server" Text="Paciente: " ForeColor="#808080"></asp:Label>
                            <td>
                                <asp:TextBox ID="txtPaciente" runat="server" ReadOnly="true" class="form-control"></asp:TextBox>
                        </tr>
                        <tr>
                            <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                                <asp:Label ID="lblIdCita" runat="server" Text="N° Cita: " ForeColor="#808080"></asp:Label>
                            <td>
                                <asp:TextBox ID="txtIdCita" runat="server" TextMode="Number" ReadOnly="true" class="form-control"></asp:TextBox>
                        </tr>
                        

                        <tr>
                            <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                                <asp:Label ID="lblAPP" runat="server" Text="APP: " ForeColor="#808080"></asp:Label>
                            <td>
                                <asp:TextBox ID="txtAPP" Width="400px" Height="100px" runat="server" placeholder="APP" class="form-control" TextMode="MultiLine"></asp:TextBox>
                        </tr>
                        <tr>
                            <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                                <asp:Label ID="lblAPNP" runat="server" Text="APnP: " ForeColor="#808080"></asp:Label>
                            <td>
                                <asp:TextBox ID="txtAPNP" Width="400px" Height="100px" runat="server" placeholder="APnP" class="form-control" TextMode="MultiLine"></asp:TextBox>
                        </tr>
                        <tr>
                            <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                                <asp:Label ID="lblAQx" runat="server" Text="AQx: " ForeColor="#808080"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="txtAQX" Width="400px" Height="100px" runat="server" placeholder="AQx" class="form-control" TextMode="MultiLine"></asp:TextBox>
                        </tr>
                        <tr>
                            <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                                <asp:Label ID="lblAGO" runat="server" Text="AGO: " ForeColor="#808080"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="txtAGO" Width="400px" Height="100px" runat="server" placeholder="AGO" class="form-control" TextMode="MultiLine"></asp:TextBox>
                        </tr>
                        <tr>
                            <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                                <asp:Label ID="lblATX" runat="server" Text="ATx: " ForeColor="#808080"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="txtATX" Width="400px" Height="100px" runat="server" placeholder="ATx" class="form-control" TextMode="MultiLine"></asp:TextBox>
                        </tr>
                        <tr>
                            <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                                <asp:Label ID="lblMotivo" runat="server" Text="Motivo: " ForeColor="#808080"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="txtMotivo" Width="400px" Height="100px" runat="server" placeholder="Motivo" class="form-control" TextMode="MultiLine"></asp:TextBox>
                        </tr>

                    </table>
                </div>

                <div class="col-lg-6">
                    <table class="table-condensed">

                        <tr>
                            <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                                <asp:Label ID="lblPlanMedico" runat="server" Text="Plan Médico: " ForeColor="#808080"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="txtPlanMedico" Width="400px" Height="100px" runat="server" placeholder="Plan Médico" class="form-control" TextMode="MultiLine"></asp:TextBox>
                        </tr>
                        <tr>
                            <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                                <asp:Label ID="lblIncapacidad" runat="server" Text="Incapacidad: " ForeColor="#808080"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="txtIncapacidad" Width="400px" Height="100px" runat="server" placeholder="Incapacidad" class="form-control" TextMode="MultiLine"></asp:TextBox>
                        </tr>
                        <tr>
                            <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                                <asp:Label ID="lblExFx" runat="server" Text="ExFx: " ForeColor="#808080"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="txtExFx" runat="server" Width="400px" Height="100px" placeholder="ExFx" class="form-control" TextMode="MultiLine"></asp:TextBox>
                        </tr>
                        <tr>
                            <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                                <asp:Label ID="lblAnalisis" runat="server" Text="Análisis: " ForeColor="#808080"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="txtAnalisis" runat="server" Width="400px" Height="100px" placeholder="Análisis" class="form-control" TextMode="MultiLine"></asp:TextBox>
                        </tr>
                        <tr>
                            <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                                <asp:Label ID="lblReferencia" runat="server" Text="Referencia: " ForeColor="#808080"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="txtReferencia" runat="server" Width="400px" Height="100px" placeholder="Referencia" class="form-control" TextMode="MultiLine"></asp:TextBox>
                        </tr>
                        <tr>
                            <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                                <asp:Label ID="lblIPX" runat="server" Text="IPX: " ForeColor="#808080"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="txtIPX" runat="server" Width="400px" Height="100px" placeholder="IPX" class="form-control" TextMode="MultiLine"></asp:TextBox>
                        </tr>

                    </table>
                </div>
            </div>
        </div>
    </div>





    <div class="col-md-12 text-center">
        <asp:Button ID="btnModificar" runat="server" Text="Modificar" class="btn btn-form" OnClick="btnModificar_Click"
            Width="130px" BorderStyle="None" Font-Bold="False" Font-Italic="False" CssClass="btn-warning" ForeColor="White" Height="38px" />
    </div>
    <br />
    
  
</asp:Content>
