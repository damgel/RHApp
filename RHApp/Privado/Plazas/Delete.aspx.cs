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

namespace RHApp.Privado.Plazas
{
    public partial class Delete : System.Web.UI.Page
    {
		protected RHApp.Models.EntitiesModels _db = new RHApp.Models.EntitiesModels();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected Plaza item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int idPlaza)
        {
            using (_db)
            {
                var item = _db.Plazas.Find(idPlaza);

                if (item != null)
                {
                    _db.Plazas.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single Plaza item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public RHApp.Models.Plaza GetItem([FriendlyUrlSegmentsAttribute(0)]int? idPlaza)
        {
            if (idPlaza == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.Plazas.Where(m => m.idPlaza == idPlaza).FirstOrDefault();
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

