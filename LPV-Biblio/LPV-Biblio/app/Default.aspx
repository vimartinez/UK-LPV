﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LPV_Biblio.app.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="page">
				<div id="sidebar">
					<div class="box">
						<h3>Biblioteca virtual</h3>
						<p>
							Puede explorar nuestro catálogo con mas de 1000 artículos, monografías, ebooks y ensayos disponibles en castellano.
						</p>
					</div>
					<div class="box">
						<h3>Servicios</h3>
						<ul class="list">
							<li class="first"><a href="#">Alquiler de libros</a></li>
							<li><a href="#">Catálogo online</a></li>
							<li><a href="#">Administración de libros</a></li>
							<li><a href="#">Adminisrtación de socios</a></li>

						</ul>
					</div>
				</div>
         <div id="content">
   				<div class="box">
						<h2>Bienvenidos a Biblio!</h2>
						<img class="alignleft" src="img/pic01.jpg" alt="" />
						<p>
							Biblio! es un sistema de administración de bibliotecas, permite gestionar el catálogo, ingresar nuevos socios, registrar el préstamo y la devolución de libros físicos y visualizar contenidos digitales.
						</p>
					</div>
					<div id="col1" class="box">
						<h3>Préstamo de libros</h3>
						<p>
							Contamos con un servicio de préstamo de libros para nuestros socios. Hay más de 3000 libros disponibles
						</p>
						<ul class="list">
							<li class="first"><a href="#">Más información</a></li>
						</ul>
					</div>
					<div id="col2" class="box">
						<h3>Hacete socio gratis</h3>
						<p>
							Asociate a nuestra biblioteca gratis, al asociarte tendrás un montón de beneficios, por ejemplo podrás retirar libros por un determinado tiempo. 
						</p>
						<ul class="list">
							<li class="first"><a href="#">Más información</a></li>
						</ul>
					</div>
					<br class="clearfix" />
				</div>
</asp:Content>