using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LPV_Biblio.app.admin
{
    public partial class gestionLibros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection("Data Source=NOTEBOOK\\SQLEXPRESS;Initial Catalog=BiblioDB;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
                SqlCommand cmd = new SqlCommand("select Aut_ID, Aut_NombreApe from Autores order by Aut_NombreApe", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "Aut_NombreApe";
                DropDownList1.DataValueField = "Aut_ID";
                DropDownList1.DataBind();
            }    
        }

        protected void btnNuevoAutor_Click(object sender, EventArgs e)
        {
            Server.Transfer("altaAutores.aspx");
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            String nombre = txtNombre.Text;
            int autor = Int32.Parse(DropDownList1.SelectedValue);
            String ISBN = txtISBN.Text;
            String resena = txtRes.Text;
            String coment = txtObservaciones.Text;
            int cantidad = 0;

            if (nombre == "")
            {
                lblError.Text = "Debe ingresar el nombre del libro";
                return;
            }
            if (ISBN == "")
            {
                lblError.Text = "Debe ingresar el ISBN del libro";
                return;
            }
            if (txtCant.Text == "")
            {
                lblError.Text = "Debe ingresar la cantidad de libros";
                return;
            }

            if (!Int32.TryParse(txtCant.Text, out cantidad))
            {
                lblError.Text = "Debe ingresar la cantidad de libros";
                return;
            }
            if (cantidad <= 0)
            {
                lblError.Text = "La cantidad de libros debe ser mayor a 0";
                return;
            }

            SqlCommand cmd = new SqlCommand();
            SqlDataReader reader;
            SqlConnection sqlConnection1 = new SqlConnection("Data Source=NOTEBOOK\\SQLEXPRESS;Initial Catalog=BiblioDB;Integrated Security=True");

            //inserto en tabla libros
            cmd.CommandText = "INSERT INTO Libros(Lib_Nombre, Aut_ID, Lib_ISBN, Lib_Resena, Lib_Observ) VALUES ('" + nombre + "'," + autor + ",'"+ ISBN + "','"+ resena +"','"+ coment + "'); SELECT CAST(scope_identity() AS int)";
            cmd.CommandType = CommandType.Text;
            cmd.Connection = sqlConnection1;
            
            sqlConnection1.Open();
            Int32 newId = (Int32)cmd.ExecuteScalar();
            
            sqlConnection1.Close();

            //inserto la cantidad en la tabla Libros_stock
            cmd.CommandText = "INSERT INTO Libros_Stock(Lib_ID, LibStck_Cant, LibStck_Disp) VALUES (" + newId + "," + cantidad + "," + cantidad + ");";
            sqlConnection1.Open();
            reader = cmd.ExecuteReader();

            lblError.Text = "El libro se insertó correctamente.";
            txtNombre.Text = "";
            txtISBN.Text = "";
            txtCant.Text = "";
            txtObservaciones.Text = "";
            txtRes.Text = "";
            DropDownList1.SelectedIndex = 0;
            sqlConnection1.Close();
        }
    }
}