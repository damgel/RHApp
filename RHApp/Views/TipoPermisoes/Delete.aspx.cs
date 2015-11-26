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

namespace RHApp.Views.TipoPermisoes
{
    public partial class Delete : System.Web.UI.Page
    {
		protected RHApp.DatabaseModel.RhDataModel _db = new RHApp.DatabaseModel.RhDataModel();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected TipoPermiso item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int idTipoPermiso)
        {
            using (_db)
            {
                var item = _db.TipoPermisoes.Find(idTipoPermiso);

                if (item != null)
                {
                    _db.TipoPermisoes.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single TipoPermiso item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public RHApp.DatabaseModel.TipoPermiso GetItem([FriendlyUrlSegmentsAttribute(0)]int? idTipoPermiso)
        {
            if (idTipoPermiso == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.TipoPermisoes.Where(m => m.idTipoPermiso == idTipoPermiso).FirstOrDefault();
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

