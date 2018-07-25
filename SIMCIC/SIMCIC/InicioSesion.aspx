<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="InicioSesion.aspx.cs" Inherits="SIMCIC.InicioSesion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class="active" style="border-style: none; border-color: #FFFFFF; background-image: url('img/prueba.png'); height: 196px;">
        </div>
        <section>
            <div class="tab-content panel-footer" style="background-color: #FFFFFF">
                <div runat="server" class="panel-group">
                    <div class="container ">
                        <div class="col-lg-6 col-lg-offset-3" style="border: medium groove #E0E0E0">
                            <br />
                            <br />
                            <br />
                            <div class="inner-form">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <asp:TextBox ID="txtCorreo" runat="server" type="email" placeholder="Correo" class="form-control"></asp:TextBox>
                                </div>
                                <br />
                                <br />
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                    <asp:TextBox ID="txtContra" runat="server" type="password" placeholder="Contraseña" class="form-control"></asp:TextBox>
                                </div>
                                <br />
                                <div class="col-lg-12" runat="server">
                                    <asp:LinkButton ID="lbOlvidar" runat="server"
                                        Text="¿Olvidó su contraseña?" OnClick="lbOlvidar_Click"
                                        ForeColor="#0099FF" BorderStyle="None" Font-Bold="False"></asp:LinkButton>
                                </div>
                                <div runat="server" class="active">
                                    <asp:Button ID="btnIngresar" runat="server" Style="float: right" Text="Ingresar" class="btn btn-form"
                                        Width="103px" BorderStyle="None" Font-Bold="False" Font-Italic="False" CssClass="btn-info" ForeColor="White" Height="38px" />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </section>
    </form>

</asp:Content>
