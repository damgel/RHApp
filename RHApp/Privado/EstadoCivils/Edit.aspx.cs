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
namespace RHApp.Privado.EstadoCivils
{
    public partial class Edit : System.Web.UI.Page
    {
		protected RHApp.Models.EntitiesModels _db = new RHApp.Models.EntitiesModels();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Update methd to update the selected EstadoCivil item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(int  idEstadoCivil)
        {
            using (_db)
            {
                var item = _db.EstadoCivils.Find(idEstadoCivil);

                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", idEstadoCivil));
                    return;
                }

                item.UsuarioGrabacion = 0;
                item.FechaGrabacion = DateTime.Now;
                TryUpdateModel(item);

                if (ModelState.IsValid)
                {
                    // Save changes here
                    _db.SaveChanges();
                    Response.Redirect("../Default");
                }
            }
        }

        // This is the Select method to selects a single EstadoCivil item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public RHApp.Models.EstadoCivil GetItem([FriendlyUrlSegmentsAttribute(0)]int? idEstadoCivil)
        {
            if (idEstadoCivil == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.EstadoCivils.Find(idEstadoCivil);
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
