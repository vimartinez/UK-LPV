<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="verConsultas.aspx.cs" Inherits="LPV_Biblio.app.css.verConsultas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="page">
        <div class="box">
			<h2>Listado de Consultas:</h2>				
			<p>
                Aquí se visualizan las consultas enviadas por los visitantes al sitio: <br />
			</p>
            <p id="frmlogin">
               <asp:SqlDataSource ID="DTSUsuarios" runat="server"
                    ConnectionString="Data Source=NOTEBOOK\SQLEXPRESS;Initial Catalog=BiblioDB;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"
                    ProviderName="System.Data.SqlClient"
                    SelectCommand="SELECT consMail, consDescrip, consFecha FROM dbo.Consultas">
               </asp:SqlDataSource>

                <asp:GridView id="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="consMail" DataSourceID="DTSUsuarios">
                    <Columns>
                        <asp:BoundField DataField="consMail" HeaderText="Mail" />
                        <asp:BoundField DataField="consDescrip" HeaderText="Consulta" />
                        <asp:BoundField DataField="consFecha" HeaderText="Fecha" />
                    </Columns>
                    <HeaderStyle BackColor="#DEDFDE" Font-Bold="false" ForeColor="Black" />   
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" Width="600px" Height="50px" VerticalAlign="Middle" />  
                </asp:GridView>
            </p>
        </div>
    </div>
</asp:Content>
