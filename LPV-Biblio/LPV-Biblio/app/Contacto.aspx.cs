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
    public partial class Contacto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void enviar_Click(object sender, EventArgs e)
        {
            string mail = null;
            string consulta = null;


            mail = txtMail.Text;
            consulta = txtConsulta.Text;
            DateTime date1 = new DateTime();

            if (mail == "")
            {
                lblError.Text = "Debe ingresar la dirección de email";
                return;
            }
            if (consulta == "")
            {
                lblError.Text = "Debe ingresar la consulta";
                return;
            }

            SqlCommand cmd = new SqlCommand();
            SqlDataReader reader;
            SqlConnection sqlConnection1 = new SqlConnection("Data Source=NOTEBOOK\\SQLEXPRESS;Initial Catalog=BiblioDB;Integrated Security=True");

            cmd.CommandText = "INSERT INTO consultas(consMail, consDescrip) VALUES ('"+mail+"','"+consulta+"')";
            cmd.CommandType = CommandType.Text;
            cmd.Connection = sqlConnection1;

            sqlConnection1.Open();

            reader = cmd.ExecuteReader();

            lblError.Text = "La consulta se envío correctamente.";
            txtMail.Text="";
            txtConsulta.Text="";
            sqlConnection1.Close();

        }
    }
}