<%@ Page Title="" Language="C#" MasterPageFile="~/Formularios.Master" AutoEventWireup="true" CodeBehind="RegistroDiagnostico.aspx.cs" Inherits="SIMCIC.RegistroDiagnostico" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
            <table class="table-condensed" align="center">
                <h3 align="center">Registro de diagnósticos</h3>
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                        <asp:Label ID="lblAPP" runat="server" Text="APP: " ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtAPP" runat="server" placeholder="APP" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblAPNP" runat="server" Text="APnP: " ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:TextBox ID="txtAPNP" runat="server" placeholder="APnP" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblAQx" runat="server" Text="AQx: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtAQX" runat="server" placeholder="AQx" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>
                 <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblAGO" runat="server" Text="AGO: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtAGO" runat="server" placeholder="AGO" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>
                 <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblATX" runat="server" Text="ATx: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtATX" runat="server" placeholder="ATx" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                        <asp:Label ID="lblMotivo" runat="server" Text="Motivo: " ForeColor="#808080"></asp:Label></td>
                   <td>
                         <asp:TextBox ID="txtMotivo" runat="server" placeholder="Motivo" class="form-control" TextMode="MultiLine"></asp:TextBox>
                        
                </tr>
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblPlanMedico" runat="server" Text="Plan Médico: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtPlanMedico" runat="server" placeholder="Plan Médico" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>
                <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblIncapacidad" runat="server" Text="Incapacidad: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtIncapacidad" runat="server" placeholder="Incapacidad" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>
                 <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblExFx" runat="server" Text="ExFx: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtExFx" runat="server" placeholder="ExFx" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>
                 <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblAnalisis" runat="server" Text="Análisis: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtAnalisis" runat="server" placeholder="Análisis" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>
                 <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblReferencia" runat="server" Text="Referencia: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtReferencia" runat="server" placeholder="Referencia" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>
                 <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lblIPX" runat="server" Text="IPX: " ForeColor="#808080"></asp:Label></td>
                    <td>
                         <asp:TextBox ID="txtIPX" runat="server" placeholder="IPX" class="form-control" TextMode="MultiLine"></asp:TextBox>
                </tr>
            </table>
            <div class="btn-group">
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" CssClass="btn btn-primary" Width="100px"/>
            </div>
    </form>

</asp:Content>
