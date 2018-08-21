<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="MantenimientoUsuario.aspx.cs" Inherits="SIMCIC.MantenimientoUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<section>
    <div class="product-screen-1 wow fadeInLeft" runat="server" data-wow-delay="0.1s" data-wow-duration="0.1s"> 
            <h3 align="center">Recuperación de la cuenta</h3>
            <br />
            <br />
            <div style="background-color: #FFFFFF">
                <div runat="server" class="panel-group">
                    <div class="container ">
                        <div class="col-lg-6 col-lg-offset-3" id="div1" runat="server" style="background-color: #00548E">
                            <br />
                            <asp:Image ID="Image1" runat="server" Height="78px" ImageUrl="~/img/1.png" Width="76px" />
                            <br />
                            <br />
                            <div class="inner-form">
                                <asp:Label ID="Label1" runat="server" Text="Digite su correo para recuperar la cuenta" ForeColor="White"></asp:Label>
                                <br />
                                <br />
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <asp:TextBox ID="txtCorreo" runat="server" type="email" placeholder="Correo" class="form-control"></asp:TextBox>
                                </div>
                                <br />
                                <div runat="server" class="active">
                                    <asp:Button ID="btnVerificar" runat="server" OnClick="btnVerificar_Click" Style="float: right" Text="Verificar" class="btn-info"
                                        Width="103px" Font-Bold="False" Font-Italic="False" CssClass="btn-info" ForeColor="White" Height="38px" />
                                    <br />
                                    <br />
                                    <br />
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-lg-offset-3" id="div2" runat="server" style="background-color: #00548E">
                            <br />
                            <asp:Image ID="Image2" runat="server" Height="78px" ImageUrl="~/img/2.png" Width="76px" />
                            <br />
                            <br />
                            <div class="inner-form">
                                <asp:Label ID="Label2" runat="server" Text="Digite el código recibido" ForeColor="White"></asp:Label>
                                <br />
                                <br />
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-asterisk"></i></span>
                                    <asp:TextBox ID="txtCodigo" runat="server" placeholder="Código" class="form-control"></asp:TextBox>
                                </div>
                                <br />
                                <div runat="server" class="active">
                                    <asp:Button ID="btnVerificarCodigo" runat="server" OnClick="btnVerificarCodigo_Click" Style="float: right" Text="Verificar" class="btn-info"
                                        Width="103px" Font-Bold="False" Font-Italic="False" CssClass="btn-info" ForeColor="White" Height="38px" />
                                    <br />
                                    <br />
                                    <br />
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-lg-offset-3" id="div3" runat="server" style="background-color: #00548E">
                            <br />
                            <asp:Image ID="Image3" runat="server" Height="78px" ImageUrl="~/img/3.png" Width="76px" />
                            <br />
                            <br />
                            <div class="inner-form">
                                <asp:Label ID="Label3" runat="server" Text="Digite su nueva contraseña" ForeColor="White"></asp:Label>
                                <br />
                                <br />
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                    <asp:TextBox ID="txtContra" type="password" runat="server" placeholder="Nueva contraseña" class="form-control"></asp:TextBox>
                                </div>
                                <br />
                                <asp:Label ID="Label4" runat="server" Text="Repita su nueva contraseña" ForeColor="White"></asp:Label>
                                <br />
                                <br />
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                    <asp:TextBox ID="TextBox1" type="password" runat="server" placeholder="Nueva contraseña" class="form-control"></asp:TextBox>
                                </div>
                                <br />
                                <div runat="server" class="active">
                                    <asp:Button ID="btnActualizar" runat="server" OnClick="btnActualizar_Click" Style="float: right" Text="Actualizar" class="btn-info"
                                        Width="103px" Font-Bold="False" Font-Italic="False" CssClass="btn-info" ForeColor="White" Height="38px" />
                                    <br />
                                    <br />
                                    <br />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
        </section>
</asp:Content>
