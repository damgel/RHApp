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
namespace RHApp.Views.AuditoriaInternas
{
    public partial class Edit : System.Web.UI.Page
    {
		protected RHApp.DatabaseModel.RhDataModel _db = new RHApp.DatabaseModel.RhDataModel();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Update methd to update the selected AuditoriaInterna item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(int  idAuditoriaInterna)
        {
            using (_db)
            {
                var item = _db.AuditoriaInternas.Find(idAuditoriaInterna);

                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", idAuditoriaInterna));
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

        // This is the Select method to selects a single AuditoriaInterna item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public RHApp.DatabaseModel.AuditoriaInterna GetItem([FriendlyUrlSegmentsAttribute(0)]int? idAuditoriaInterna)
        {
            if (idAuditoriaInterna == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.AuditoriaInternas.Find(idAuditoriaInterna);
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
