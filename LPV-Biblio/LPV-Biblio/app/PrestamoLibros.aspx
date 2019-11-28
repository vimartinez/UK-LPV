<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PrestamoLibros.aspx.cs" Inherits="LPV_Biblio.app.PrestamoLibros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="page">
        <div class="box">
			<h2>Préstamo de libros:</h2>				
			<p>
                Registrar la entrega de libros: <br />
			</p>
              <p id="frmPrestamoLibros">
                <asp:Label ID="lblNombre" runat="server" Text="Nombre:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtNombre" runat="server" Width="350px" TextMode="SingleLine" MaxLength="100"></asp:TextBox><br />
                <asp:Label ID="lblAutor" runat="server" Text="Autor:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" Width="250px" runat="server"> </asp:DropDownList>&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblISBN" runat="server" Text="ISBN:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtISBN" runat="server" Width="350px" TextMode="SingleLine" MaxLength="100"></asp:TextBox><br />
                <asp:Label ID="lblres" runat="server" Text="Reseña:" class="textoTop"></asp:Label><br /><asp:TextBox ID="txtRes" runat="server" TextMode="MultiLine" Height="150" Width="450px" MaxLength="500"></asp:TextBox><br />
                <asp:Label ID="lblObs" runat="server"  Text="Comentarios:"></asp:Label><br /><asp:TextBox ID="txtObservaciones" runat="server" TextMode="MultiLine"  MaxLength="300" Height="80" Width="450"></asp:TextBox><br />
                <asp:Label ID="lblCant" runat="server" Text="Cantidad:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtCant" runat="server" Width="150px" TextMode="SingleLine" MaxLength="4"></asp:TextBox><br /><br />
                <asp:Label ID="lblError" runat="server"></asp:Label>
                <br /><br />
                
                <asp:Button ID="btnEnviar" runat="server" Text="Enviar" Height="30" Width="80"  />
            </p>
        </div>
    </div>
</asp:Content>
