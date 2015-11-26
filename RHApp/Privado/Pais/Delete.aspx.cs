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

namespace RHApp.Privado.Pais
{
    public partial class Delete : System.Web.UI.Page
    {
		protected RHApp.Models.EntitiesModels _db = new RHApp.Models.EntitiesModels();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected Pai item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int idPais)
        {
            using (_db)
            {
                var item = _db.Pais.Find(idPais);

                if (item != null)
                {
                    _db.Pais.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single Pai item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public RHApp.Models.Pai GetItem([FriendlyUrlSegmentsAttribute(0)]int? idPais)
        {
            if (idPais == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.Pais.Where(m => m.idPais == idPais).FirstOrDefault();
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

