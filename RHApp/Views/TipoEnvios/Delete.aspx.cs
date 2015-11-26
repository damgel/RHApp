using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using RHApp.DatabaseModel;

namespace RHApp.Views.TipoEnvios
{
    public partial class Delete : System.Web.UI.Page
    {
		protected RHApp.DatabaseModel.RhDataModel _db = new RHApp.DatabaseModel.RhDataModel();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected TipoEnvio item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int idTipoEnvio)
        {
            using (_db)
            {
                var item = _db.TipoEnvios.Find(idTipoEnvio);

                if (item != null)
                {
                    _db.TipoEnvios.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single TipoEnvio item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public RHApp.DatabaseModel.TipoEnvio GetItem([FriendlyUrlSegmentsAttribute(0)]int? idTipoEnvio)
        {
            if (idTipoEnvio == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.TipoEnvios.Where(m => m.idTipoEnvio == idTipoEnvio).FirstOrDefault();
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

