﻿using System;
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
    public partial class Edit : System.Web.UI.Page
    {
		protected RHApp.DatabaseModel.RhDataModel _db = new RHApp.DatabaseModel.RhDataModel();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Update methd to update the selected SolicitudConstancia item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(int  idSolicitudConstancia)
        {
            using (_db)
            {
                var item = _db.SolicitudConstancias.Find(idSolicitudConstancia);

                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", idSolicitudConstancia));
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

        // This is the Select method to selects a single SolicitudConstancia item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public RHApp.DatabaseModel.SolicitudConstancia GetItem([FriendlyUrlSegmentsAttribute(0)]int? idSolicitudConstancia)
        {
            if (idSolicitudConstancia == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.SolicitudConstancias.Find(idSolicitudConstancia);
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
