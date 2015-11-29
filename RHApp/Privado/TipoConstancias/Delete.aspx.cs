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

namespace RHApp.Privado.TipoConstancias
{
    public partial class Delete : System.Web.UI.Page
    {
		protected RHApp.Models.EntitiesModels _db = new RHApp.Models.EntitiesModels();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected TipoConstancia item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int idTipoConstancia)
        {
            using (_db)
            {
                var item = _db.TipoConstancias.Find(idTipoConstancia);

                if (item != null)
                {
                    _db.TipoConstancias.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single TipoConstancia item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public RHApp.Models.TipoConstancia GetItem([FriendlyUrlSegmentsAttribute(0)]int? idTipoConstancia)
        {
            if (idTipoConstancia == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.TipoConstancias.Where(m => m.idTipoConstancia == idTipoConstancia).FirstOrDefault();
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

