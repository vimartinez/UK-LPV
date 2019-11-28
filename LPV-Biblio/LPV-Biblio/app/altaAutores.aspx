<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="altaAutores.aspx.cs" Inherits="LPV_Biblio.app.altaAutores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="page">
        <div class="box">
			<h2>Administración de Autores:</h2>				
			<p>
                Aquí se pueden gestionear los autores de libros - artículos, etc: <br />
			</p>
             <p id="frmAltaAutores">
                <asp:Label ID="lblNombre" runat="server" Text="Nombre:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtNombre" runat="server" Width="300px" TextMode="SingleLine" MaxLength="100"></asp:TextBox><br /><br />
                <asp:Label ID="lblNacionalidad" runat="server" Text="Nacionalidad:"></asp:Label>&nbsp;&nbsp;<asp:TextBox ID="txtNacionalidad" runat="server" Width="300px" TextMode="SingleLine" MaxLength="100"></asp:TextBox><br /><br />
                <asp:Label ID="lblError" runat="server"></asp:Label>
                <br /><br />
                <asp:Button ID="btnEnviar" runat="server" Text="Enviar" Height="30" Width="80" OnClick="btnEnviar_Click"  />
                <asp:Button ID="btnVolver" runat="server" Text="Volver" Height="30" Width="80" OnClick="btnVolver_Click"   />
            </p>
        </div>
    </div>
</asp:Content>
