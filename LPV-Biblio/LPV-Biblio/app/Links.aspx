<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Links.aspx.cs" Inherits="LPV_Biblio.app.Links" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="page">
        <div class="box">
			<h2>Links</h2>		
            <p>
                Otras bibliotecas interesantes... <br />
			</p>
            <img class="alignleft" src="img/pic02.jpg" alt="" />		
            <ul class="list">
                <li class="first"><a href="http://www.bn.gov.ar/" target="_blank">Biblioteca Nacional</a></li>
                <li><a href="http://www.bcnbib.gov.ar/" target="_blank">Biblioteca del Congreso de la Nación</a></li>
			    <li><a href="http://library.princeton.edu/" target="_blank">Biblioteca Universidad de Princeton</a></li>
			    <li><a href="http://libraries.mit.edu/" target="_blank">Biblioteca del MIT</a></li>
			    <li><a href="http://www.lib.washington.edu/" target="_blank">Biblioteca Universidad de Washington</a></li>
			</ul>
        </div>
    </div>
</asp:Content>
