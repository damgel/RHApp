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

namespace RHApp.Views.EscalonamientoPermisos
{
    public partial class Delete : System.Web.UI.Page
    {
		protected RHApp.DatabaseModel.RhDataModel _db = new RHApp.DatabaseModel.RhDataModel();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected EscalonamientoPermiso item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int idEscalonamientoPermisos)
        {
            using (_db)
            {
                var item = _db.EscalonamientoPermisos.Find(idEscalonamientoPermisos);

                if (item != null)
                {
                    _db.EscalonamientoPermisos.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single EscalonamientoPermiso item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public RHApp.DatabaseModel.EscalonamientoPermiso GetItem([FriendlyUrlSegmentsAttribute(0)]int? idEscalonamientoPermisos)
        {
            if (idEscalonamientoPermisos == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.EscalonamientoPermisos.Where(m => m.idEscalonamientoPermisos == idEscalonamientoPermisos).FirstOrDefault();
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

