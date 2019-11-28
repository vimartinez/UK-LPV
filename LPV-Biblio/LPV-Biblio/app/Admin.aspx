<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="LPV_Biblio.app.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="page">
        <div¨ class="box">
			<h2>Herramientas Administrativas</h2>
			<div id="contenidoNoLogin" runat="server">	
			    <p >
				    <h2>Acceso exclusivo para empleados de la biblioteca</h2><br /><br />
                   Debe ser un usuario registrado para acceder a estos contenidos <br /> &nbsp; <br />
               

			    </p>
            </div>
            <div id="contenidoLogin" runat="server" >	
                <div class="box">
						<h3>Opciones de administrador</h3>
						<ul class="list">
							<li class="first"><a href="#">Gestión de usuarios</a></li>
							<li><a href="gestionLibros.aspx">Gestión de catálogo</a></li>
							<li><a href="PrestamoLibros.aspx">Préstamo de libros</a></li>
                            <li><a href="verConsultas.aspx">Revisar Consultas</a></li>
							<li><a href="#">Devolución de libros</a></li>
                            <li><a href="#">Listado de libros en biblioteca</a></li>
                            <li><a href="#">Listado de libros prestados</a></li>
                            <li><a href="#">Listado de socios deudores</a></li>

						</ul>
					</div>

            </div>
            </div>
         </div>
</asp:Content>
