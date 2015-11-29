using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using RHApp.Models;
namespace RHApp.Privado.SolicitudVacaciones
{
    public partial class Edit : System.Web.UI.Page
    {
		protected RHApp.Models.EntitiesModels _db = new RHApp.Models.EntitiesModels();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Update methd to update the selected SolicitudVacacione item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(int  idSolicitudVacaciones)
        {
            using (_db)
            {
                var item = _db.SolicitudVacaciones.Find(idSolicitudVacaciones);

                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", idSolicitudVacaciones));
                    return;
                }

                TryUpdateModel(item);

                if (ModelState.IsValid)
                {
                    // Save changes here
                    _db.SaveChanges();
                    Response.Redirect("../Default");
                }
            }
        }

        // This is the Select method to selects a single SolicitudVacacione item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public RHApp.Models.SolicitudVacacione GetItem([FriendlyUrlSegmentsAttribute(0)]int? idSolicitudVacaciones)
        {
            if (idSolicitudVacaciones == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.SolicitudVacaciones.Find(idSolicitudVacaciones);
            }
        }

        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("../Default");
            }
        }
    }
}
