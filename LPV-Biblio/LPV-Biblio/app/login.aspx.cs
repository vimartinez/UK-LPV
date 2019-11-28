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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            string nombreUsu=null;
            string claveUsu = null;
            string claveBD = null;
            string nombreUsuBD = null;

            nombreUsu = txtUsuario.Text;
            claveUsu = txtClave.Text;

            if (nombreUsu == "")
            {
                lblError.Text = "Debe ingresar el nombre de usuario";
                return;
            }
            if (claveUsu == "")
            {
                lblError.Text = "Debe ingresar la clave";
                return;
            }

            SqlCommand cmd = new SqlCommand();
            SqlDataReader reader;
            SqlConnection sqlConnection1 = new SqlConnection("Data Source=NOTEBOOKVIC\\SQLEXPRESS;Initial Catalog=BiblioDB;Integrated Security=True");

            cmd.CommandText = "SELECT nombreApe, userName, clave FROM Usuarios WHERE userName ='" + nombreUsu + "'";
            cmd.CommandType = CommandType.Text;
            cmd.Connection = sqlConnection1;

            sqlConnection1.Open();

            reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    claveBD = reader.GetString(2).Trim();
                    nombreUsuBD = reader.GetString(0).Trim() + " (" + reader.GetString(1).Trim() + ") ";
                }
            }
            else
            {
                lblError.Text = "Usuario o clave incorrectos";
                return;
            }
            reader.Close();
            if (String.Compare(claveUsu, claveBD) == 0)
            {
                lblError.Text = "login exitoso!";
                Session["login"] = nombreUsuBD;
                Server.Transfer("Admin.aspx");
            }
            else
            {
                lblError.Text = "Usuario o clave incorrectos 2";
            }

            sqlConnection1.Close();


        }
    }
}