<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="InicioSesion.aspx.cs" Inherits="SIMCIC.InicioSesion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<section runat="server">
    <div runat="server">
        <div class="row">

            <div class="col-lg-12">
                <asp:Label ID="lblCorreo" runat="server" Text="Correo: " Font-Bold="True" ForeColor="#3FBBC0"></asp:Label>
                <div class="form-group">
                    <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" placeholder="Correo"></asp:TextBox>
                </div>
            </div>

            <div class="col-lg-12">
                <asp:Label ID="lblContra" runat="server" Text="Contraseña: " Font-Bold="True" ForeColor="#3FBBC0"></asp:Label>
                <div class="form-group">
                    <asp:TextBox ID="txtContra" runat="server" CssClass="form-control" placeholder="Contraseña"></asp:TextBox>
                </div>
            </div>

            <div class="col-lg-12">
                <asp:Button ID="Button1" runat="server" Text="Ingresar" />
           
            </div>

            <div class="col-lg-12">

                <%--<asp:LinkButton ID="lbOlvidar" runat="server"
                    Style="float: right; padding-top: 15px"
                    Text="¿Olvidó su contraseña?" OnClick="lbOlvidar_Click"
                    ForeColor="#3FBBC0"></asp:LinkButton>--%>
            </div>
        </div>

    </div>


</section>






</asp:Content>
