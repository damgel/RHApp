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
namespace RHApp.Privado.Religions
{
    public partial class Edit : System.Web.UI.Page
    {
		protected RHApp.Models.EntitiesModels _db = new RHApp.Models.EntitiesModels();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Update methd to update the selected Religion item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(int  idReligion)
        {
            using (_db)
            {
                var item = _db.Religions.Find(idReligion);

                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", idReligion));
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

        // This is the Select method to selects a single Religion item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public RHApp.Models.Religion GetItem([FriendlyUrlSegmentsAttribute(0)]int? idReligion)
        {
            if (idReligion == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.Religions.Find(idReligion);
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
