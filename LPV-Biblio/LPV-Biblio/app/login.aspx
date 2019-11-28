<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="LPV_Biblio.app.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="page">
        <div class="box">
			<h2>Ingreso al sistema:</h2>				
			<p>
                Solo para usuarios registrados, cualquier problema lo resolvemos <a href="Contacto.aspx" target="_blank">acá</a> <br />
			</p>
            <p id="frmlogin">
                <asp:Label ID="lblusuario" runat="server" Text="Usuario:"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtUsuario" runat="server" Width="300px" TextMode="SingleLine" MaxLength="100"></asp:TextBox><br /><br />
                <asp:Label ID="lblclave" runat="server" Text="Clave:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtClave" runat="server" Width="300px" TextMode="Password" MaxLength="100"></asp:TextBox><br />
                <asp:Label ID="lblError" runat="server"></asp:Label>
                <br /><br />
                <asp:Button ID="btnEnviar" runat="server" Text="Ingresar" Height="30" Width="80" OnClick="btnEnviar_Click" />
            </p>
        </div>
    </div>
</asp:Content>
