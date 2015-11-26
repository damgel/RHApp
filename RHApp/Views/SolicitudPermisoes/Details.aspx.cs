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

namespace RHApp.Views.SolicitudPermisoes
{
    public partial class Details : System.Web.UI.Page
    {
		protected RHApp.DatabaseModel.RhDataModel _db = new RHApp.DatabaseModel.RhDataModel();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Select methd to selects a single SolicitudPermiso item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public RHApp.DatabaseModel.SolicitudPermiso GetItem([FriendlyUrlSegmentsAttribute(0)]int? idSolicitudPermiso)
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

