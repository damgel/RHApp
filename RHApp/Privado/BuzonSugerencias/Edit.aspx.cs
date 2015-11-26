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
namespace RHApp.Privado.BuzonSugerencias
{
    public partial class Edit : System.Web.UI.Page
    {
		protected RHApp.Models.EntitiesModels _db = new RHApp.Models.EntitiesModels();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Update methd to update the selected BuzonSugerencia item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(int  idBuzonSugerencia)
        {
            using (_db)
            {
                var item = _db.BuzonSugerencias.Find(idBuzonSugerencia);

                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", idBuzonSugerencia));
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

        // This is the Select method to selects a single BuzonSugerencia item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public RHApp.Models.BuzonSugerencia GetItem([FriendlyUrlSegmentsAttribute(0)]int? idBuzonSugerencia)
        {
            if (idBuzonSugerencia == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.BuzonSugerencias.Find(idBuzonSugerencia);
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
