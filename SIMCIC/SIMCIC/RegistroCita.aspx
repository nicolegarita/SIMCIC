<%@ Page Title="" Language="C#" MasterPageFile="~/Formularios.Master" AutoEventWireup="true" CodeBehind="RegistroCita.aspx.cs" Inherits="SIMCIC.RegistroCita" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form runat="server">
     <div id="divClientes" class="form-group" runat="server" visible="true" >
            <table class="table-condensed" align="center">
                <h3 align="center">Registro de citas</h3>              
               
                  <tr>
                    <td style="margin: 20px 20px 15px 15px; padding: 20px 10px 15px 15px;">
                         <asp:Label ID="lbFecha" runat="server" Text="Fecha: " ForeColor="#808080"></asp:Label>
                    <td>
                        <asp:Calendar ID="Calendar1" runat="server" BorderStyle="Groove" Height="289px" Width="386px">
                            <DayHeaderStyle BackColor="#99CCFF" ForeColor="White" />
                            <DayStyle BackColor="#CCCCFF" ForeColor="#00548E" />
                            <OtherMonthDayStyle ForeColor="#CCCCFF" />
                            <SelectedDayStyle BackColor="#00548E" />
                            <TitleStyle BackColor="#00548E" Font-Bold="True" ForeColor="White" />
                        </asp:Calendar>                     
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

            <div class="btn-group">
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar"  CssClass="btn btn-primary" Width="100px"/>
            </div>
        </div>
        </form>


</asp:Content>
