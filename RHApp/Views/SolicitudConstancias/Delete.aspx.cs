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

namespace RHApp.Views.SolicitudConstancias
{
    public partial class Delete : System.Web.UI.Page
    {
		protected RHApp.DatabaseModel.RhDataModel _db = new RHApp.DatabaseModel.RhDataModel();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected SolicitudConstancia item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int idSolicitudConstancia)
        {
            using (_db)
            {
                var item = _db.SolicitudConstancias.Find(idSolicitudConstancia);

                if (item != null)
                {
                    _db.SolicitudConstancias.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single SolicitudConstancia item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public RHApp.DatabaseModel.SolicitudConstancia GetItem([FriendlyUrlSegmentsAttribute(0)]int? idSolicitudConstancia)
        {
            if (idSolicitudConstancia == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.SolicitudConstancias.Where(m => m.idSolicitudConstancia == idSolicitudConstancia).Include(m => m.Empleado).Include(m => m.TipoConstancia).Include(m => m.TipoEnvio).FirstOrDefault();
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

