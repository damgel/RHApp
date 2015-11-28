using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RHApp.Privado
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] != null)
            {
                logged.Text = Session["usuario"].ToString();
            }
            else
            {
                Response.Redirect("../Account/Acceso.aspx");
            }
        }
    }
}