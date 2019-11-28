using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LPV_Biblio.app
{
    public partial class altaAutores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            String nombre = txtNombre.Text;
            String nac = txtNacionalidad.Text;

            if (nombre == "")
            {
                lblError.Text = "Debe ingresar el nombre del autor";
                return;
            }
            if (nac == "")
            {
                lblError.Text = "Debe ingresar la nacionalidad del autor";
                return;
            }

            SqlCommand cmd = new SqlCommand();
            SqlDataReader reader;
            SqlConnection sqlConnection1 = new SqlConnection("Data Source=NOTEBOOK\\SQLEXPRESS;Initial Catalog=BiblioDB;Integrated Security=True");

            cmd.CommandText = "INSERT INTO Autores(Aut_NombreApe, Aut_Nacionalidad) VALUES ('" + nombre + "','" + nac + "')";
            cmd.CommandType = CommandType.Text;
            cmd.Connection = sqlConnection1;

            sqlConnection1.Open();

            reader = cmd.ExecuteReader();

            lblError.Text = "El autor se insertó correctamente.";
            txtNombre.Text = "";
            txtNacionalidad.Text = "";
            sqlConnection1.Close();
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Server.Transfer("gestionLibros.aspx");
        }
    }
}