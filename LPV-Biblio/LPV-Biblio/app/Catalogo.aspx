<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Catalogo.aspx.cs" Inherits="LPV_Biblio.app.Catalogo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="page">
        <div class="box">
			<h2>Catálogo:</h2>				
			<p>
                Listado de Libros disponibles: <br />
			</p>
            <p id="frmlogin">
               <asp:SqlDataSource ID="DTSUsuarios" runat="server"
                    ConnectionString="Data Source=NOTEBOOK\SQLEXPRESS;Initial Catalog=BiblioDB;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"
                    ProviderName="System.Data.SqlClient"
                    SelectCommand="SELECT L.Lib_ID, L.Lib_Nombre, A.Aut_NombreApe, L.lib_ISBN, Lib_Resena, Lib_Observ, LS.LibStck_Cant, LS.LibStck_Disp
                                   FROM dbo.Libros L 
                                   INNER JOIN Autores A ON L.Aut_ID = A.Aut_ID 
                                   INNEr JOIN Libros_Stock LS ON L.Lib_ID = LS.Lib_ID" >
               </asp:SqlDataSource>

                <asp:GridView id="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="Lib_ID" DataSourceID="DTSUsuarios">
                    <Columns>
                        <asp:BoundField DataField="Lib_Nombre" HeaderText="Nombre " />
                        <asp:BoundField DataField="Aut_NombreApe" HeaderText="Autor" />
                        <asp:BoundField DataField="lib_ISBN" HeaderText="ISBN" />
                        <asp:BoundField DataField="Lib_Resena" HeaderText="Reseña" ControlStyle-Width="200px" />
                        <asp:BoundField DataField="Lib_Observ" HeaderText="Comentarios" />
                        <asp:BoundField DataField="LibStck_Disp" HeaderText="Cantidad Disponible" ControlStyle-Width="100px" />
                    </Columns>
                    <HeaderStyle BackColor="#DEDFDE" Font-Bold="false" ForeColor="Black" />   
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" Width="600px" Height="50px" VerticalAlign="Middle" />  
                </asp:GridView>
            </p>
        </div>
     </div>
</asp:Content>
