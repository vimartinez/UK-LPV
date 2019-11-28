<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="LPV_Biblio.app.Contacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="page">
        <div class="box">
			<h2>Contacto:</h2>				
			<p>
                Dejanos tu consulta, responderemos a la brevedad... <br />
			</p>
            <p id="textoConsulta">
                <asp:Label ID="lblmail" runat="server" Text="Mail:"></asp:Label><br /><asp:TextBox ID="txtMail" runat="server" Width="400px" TextMode="Email" MaxLength="100"></asp:TextBox><br /><br />
                <asp:Label ID="lblconsulta" runat="server" Text="Consulta:"></asp:Label><br /><asp:TextBox ID="txtConsulta" runat="server" Width="400px" TextMode="MultiLine" Rows="20" MaxLength="800"></asp:TextBox><br /><br />
                <asp:Label ID="lblError" runat="server" Text=""></asp:Label><br/>
                <asp:Button ID="enviar" runat="server" Text="Enviar" Height="30" Width="80" OnClick="enviar_Click" />
            </p>
        </div>
    </div>
</asp:Content>
