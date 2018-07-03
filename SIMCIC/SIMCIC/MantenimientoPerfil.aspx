<%@ Page Title="" Language="C#" MasterPageFile="~/Formularios.Master" AutoEventWireup="true" CodeBehind="MantenimientoPerfil.aspx.cs" Inherits="SIMCIC.MantenimientoPerfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <section>
            <div class="container ">
                <div class="col-lg-6 col-lg-offset-3">
                    <div class="inner-form">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab1" data-toggle="tab" style="background-color: #5BC0DE; line-height: 10px; font-weight: bold; color: #FFFFFF;">Mi Perfil</a></li>
                            <li><a href="#tab2" data-toggle="tab" style="background-color: #5BC0DE; line-height: 10px; font-weight: bold; color: #FFFFFF;">Registrar Perfil</a></li>
                        </ul>
                        <div class="tab-content panel-footer" style="background-color: #00548E">
                            <div class="tab-pane active in fade" id="tab1">
                                <div class="panel-group">
                                    <br />
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="inner-form">
                                                <asp:Label ID="Label1" runat="server" Text="Cédula" ForeColor="White"></asp:Label>
                                                <br />

                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-modal-window"></i></span>
                                                    <asp:TextBox ID="txtCedula" runat="server" ReadOnly="true" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <br />
                                            <div class="inner-form">
                                                <asp:Label ID="Label2" runat="server" Text="Nombre completo" ForeColor="White"></asp:Label>
                                                <br />
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                    <asp:TextBox ID="txtNombre" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <br />
                                            <div class="inner-form">
                                                <asp:Label ID="Label3" runat="server" Text="Correo" ForeColor="White"></asp:Label>
                                                <br />
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                                    <asp:TextBox ID="txtCorreo" runat="server" type="email" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <br />
                                            <div class="inner-form">
                                                <asp:Label ID="Label4" runat="server" Text="Contraseña" ForeColor="White"></asp:Label>
                                                <br />
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                                    <asp:TextBox ID="TextBox1" runat="server" type="password" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <br />
                                            <div class="inner-form">
                                                <asp:Label ID="Label10" runat="server" Text="Repita la contraseña" ForeColor="White"></asp:Label>
                                                <br />
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                                    <asp:TextBox ID="txtContra2" runat="server" type="password" class="form-control" placeholder="Contraseña"></asp:TextBox>
                                                </div>
                                            </div>
                                            <br />
                                            <div class="inner-form">
                                                <asp:Button ID="btnModificar" runat="server" Style="float: right" Text="Modificar" class="btn-info"
                                                    Width="103px" Font-Bold="False" Font-Italic="False" CssClass="btn-info" ForeColor="White" Height="38px" />
                                            </div>
                                        </div>
                                        <br />
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane active in fade" id="tab2">
                                <div class="panel-group">
                                    <br />
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="inner-form">
                                                <asp:Label ID="Label5" runat="server" Text="Cédula" ForeColor="White"></asp:Label>
                                                <br />

                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-modal-window"></i></span>
                                                    <asp:TextBox ID="txtCedulaR" runat="server" class="form-control" placeholder="Cédula"></asp:TextBox>
                                                </div>
                                            </div>
                                            <br />
                                            <div class="inner-form">
                                                <asp:Label ID="Label6" runat="server" Text="Nombre completo" ForeColor="White"></asp:Label>
                                                <br />
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                    <asp:TextBox ID="txtNombreR" runat="server" class="form-control" placeholder="Nombre completo"></asp:TextBox>
                                                </div>
                                            </div>
                                            <br />
                                            <div class="inner-form">
                                                <asp:Label ID="Label7" runat="server" Text="Correo" ForeColor="White"></asp:Label>
                                                <br />
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                                    <asp:TextBox ID="txtCorreoR" runat="server" type="email" class="form-control" placeholder="Correo"></asp:TextBox>
                                                </div>
                                            </div>
                                            <br />
                                            <div class="inner-form">
                                                <asp:Label ID="Label8" runat="server" Text="Contraseña" ForeColor="White"></asp:Label>
                                                <br />

                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                                    <asp:TextBox ID="txtContraR" runat="server" type="password" class="form-control" placeholder="Contraseña"></asp:TextBox>
                                                </div>
                                            </div>
                                            <br />
                                            <div class="inner-form">
                                                <asp:Label ID="Label9" runat="server" Text="Repita la contraseña" ForeColor="White"></asp:Label>
                                                <br />

                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                                    <asp:TextBox ID="txtContraR2" runat="server" type="password" class="form-control" placeholder="Contraseña"></asp:TextBox>
                                                </div>
                                            </div>
                                            <br />
                                            <div class="inner-form">
                                                <asp:Button ID="btnRegistrar" runat="server" Style="float: right" Text="Registrar" class="btn-info"
                                                    Width="103px" Font-Bold="False" Font-Italic="False" CssClass="btn-info" ForeColor="White" Height="38px" />
                                            </div>
                                        </div>
                                        <br />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
</asp:Content>
