<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Servicios.aspx.cs" Inherits="LPV_Biblio.app.Servicios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="page">
        <div class="box">
			<h2>Servicios</h2>
            <p>
                Todo lo que brindamos... <br />
			</p>
		    <img class="alignleft" src="img/pic03.jpg" alt="" />		
			<p>
				Biblio! es un sistema de administración de bibliotecas, permite gestionar el catálogo, ingresar nuevos socios, registrar el préstamo y la devolución de libros físicos y visualizar contenidos digitales.
			</p>
            <ul class="list">
				<li class="first"><a href="#visitantes">Visitantes</a></li>
				<li><a href="#socios">Socios</a></li>
				<li><a href="#staff">Staff de la biblioteca</a></li>
			</ul>
            <br /><br /><br />
            <h3 id="visitantes">Visitantes:</h3>
            <p>
				navegando el sitio podrás visualizar los contenidos online, buscar en el catálogo monografías, ebooks y ensayos, leerlos desde nuestra web o descargarlos.
			</p>
             <h3 id="socios">Socios:</h3>
            <p>
				Para hacerte socio deberás asistir a la biblioteca, es un trámite sencillo y personal. Siendo socio podrás ver los mismos contenidos que los visitantes y además retirar libros de nuestra biblioteca.
			</p>
              <h3 id="staff">Staff:</h3>
            <p>
				Los administradores de la biblioteca podrán administrar socios, el catálogo, y ver reportes de uso.
			</p>
	    </div>
    </div>
</asp:Content>
