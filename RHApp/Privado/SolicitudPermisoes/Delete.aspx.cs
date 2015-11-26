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

namespace RHApp.Privado.SolicitudPermisoes
{
    public partial class Delete : System.Web.UI.Page
    {
		protected RHApp.Models.EntitiesModels _db = new RHApp.Models.EntitiesModels();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected SolicitudPermiso item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int idSolicitudPermiso)
        {
            using (_db)
            {
                var item = _db.SolicitudPermisoes.Find(idSolicitudPermiso);

                if (item != null)
                {
                    _db.SolicitudPermisoes.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single SolicitudPermiso item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public RHApp.Models.SolicitudPermiso GetItem([FriendlyUrlSegmentsAttribute(0)]int? idSolicitudPermiso)
        {
            if (idSolicitudPermiso == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.SolicitudPermisoes.Where(m => m.idSolicitudPermiso == idSolicitudPermiso).Include(m => m.Empleado).Include(m => m.EscalonamientoPermiso).Include(m => m.TipoPermiso).FirstOrDefault();
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

