using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LPV_Biblio.app
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String login = "";
            if (Session["login"] !=null) login = Session["login"].ToString();
            if (login != "")
            {
                contenidoNoLogin.Visible = false;
                contenidoLogin.Visible = true;
            }
            else
            {
                contenidoNoLogin.Visible = true;
                contenidoLogin.Visible = false;
            }
        }
    }
}