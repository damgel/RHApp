using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using RHApp.Models;

namespace RHApp.Privado.Empleados
{
    public partial class Insert : System.Web.UI.Page
    {
        protected RHApp.Models.EntitiesModels _db = new RHApp.Models.EntitiesModels();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // This is the Insert method to insert the entered Empleado item
        // USAGE: <asp:FormView InsertMethod="InsertItem">
        public void InsertItem()
        {
            using (_db)
            {
                var item = new RHApp.Models.Empleado();

                TryUpdateModel(item);

                if (ModelState.IsValid)
                {
                    // Save changes
                    item.FechaGrabacion = DateTime.Now;
                    item.Estado = "Activo";
                    _db.Empleados.Add(item);
                    _db.SaveChanges();
                    _db.Database.Log = s => System.Console.WriteLine(s);
                    Response.Redirect("Default");
                }
            }
        }

        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("Default");
            }
        }
    }
}
