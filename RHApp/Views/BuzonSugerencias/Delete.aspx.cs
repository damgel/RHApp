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

namespace RHApp.Views.BuzonSugerencias
{
    public partial class Delete : System.Web.UI.Page
    {
		protected RHApp.DatabaseModel.RhDataModel _db = new RHApp.DatabaseModel.RhDataModel();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected BuzonSugerencia item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int idBuzonSugerencia)
        {
            using (_db)
            {
                var item = _db.BuzonSugerencias.Find(idBuzonSugerencia);

                if (item != null)
                {
                    _db.BuzonSugerencias.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single BuzonSugerencia item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public RHApp.DatabaseModel.BuzonSugerencia GetItem([FriendlyUrlSegmentsAttribute(0)]int? idBuzonSugerencia)
        {
            if (idBuzonSugerencia == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.BuzonSugerencias.Where(m => m.idBuzonSugerencia == idBuzonSugerencia).Include(m => m.CategoriaSugerencia).Include(m => m.Empleado).FirstOrDefault();
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

