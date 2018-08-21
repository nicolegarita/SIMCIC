<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="MenuPrincipal.aspx.cs" Inherits="SIMCIC.MenuPrincipal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <br />
    <br />
     
    <div class="col-lg-12 text-center">
    <div class="row">
  <div class="col-lg-4">
      <asp:ImageButton ID="btnPaciente" runat="server" ImageUrl="~/img/paciente.png" PostBackUrl="~/RegistroClientes.aspx" />
      <h4>Pacientes</h4>
  </div>
   <div class="col-lg-4">
      <asp:ImageButton ID="btnDiag" runat="server" ImageUrl="~/img/diag.png" PostBackUrl="~/RegistroDiagnostico.aspx" />
      <h4>Diagnósticos</h4>
  </div>
   <div class="col-lg-4">
       <asp:ImageButton ID="btnCitas" runat="server" ImageUrl="~/img/cita.png" PostBackUrl="~/RegistroCita.aspx" />
      <h4>Citas</h4>
  </div>
        </div>
        </div>
    <br />
     <div class="col-lg-12 text-center">
    <div class="row">
  <div class="col-lg-4">
      <asp:ImageButton ID="btnMedicamentos" runat="server" ImageUrl="~/img/medicamento.png" PostBackUrl="~/RegistrarMedicamentos.aspx" />
      <h4>Medicamentos</h4>
  </div>
  <div class="col-lg-4">
      <asp:ImageButton ID="BtnCalculos" runat="server" ImageUrl="~/img/calculos.png" PostBackUrl="~/CalculosMedicos.aspx" />
      <h4>Cálculos</h4>
  </div>
  <div class="col-lg-4">
       <asp:ImageButton ID="btnPerfil" runat="server" ImageUrl="~/img/perfil.png" PostBackUrl="~/MantenimientoPerfil.aspx" />
      <h4>Mi Perfil</h4>
  </div>
        </div>
        </div>
     

    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

