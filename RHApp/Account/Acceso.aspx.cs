using RHApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RHApp.Account
{
    public partial class Acceso : System.Web.UI.Page

    {
        protected RHApp.Models.EntitiesModels _myDb = new RHApp.Models.EntitiesModels();
        protected void Unnamed6_Click(object sender, EventArgs e)
        {
            ValidateUser(Request.Form["UserName"], Request.Form["Password"]);
        }

        private bool ValidateUser(String usuario, String clave)
        {

            using (_myDb)
            {
                clave = "superpass";
                string lookupPassword = null;                
                try
                {
                    // var selectedUser = new RHApp.Models.Usuario();
                    var L2EQuery = _myDb.Usuarios.Where(u => u.Usuario1 == usuario).Where(p => p.Password == clave);

                    var selectedUser = L2EQuery.FirstOrDefault<Usuario>();

                    if (selectedUser != null)
                    {
                        Session["usuario"] = selectedUser.Usuario1;
                        Response.Redirect("../Privado/Dashboard.aspx");

                    }
                }
                catch (Exception ex)
                {
                    // Add error handling here for debugging.
                    // This error message should not be sent back to the caller.
                    System.Diagnostics.Trace.WriteLine("[ValidateUser] Exception " + ex.Message);
                }

                // Compare lookupPassword and input passWord, using a case-sensitive comparison.
                return (0 == string.Compare(lookupPassword, clave, false));

            }
        }
    }
}