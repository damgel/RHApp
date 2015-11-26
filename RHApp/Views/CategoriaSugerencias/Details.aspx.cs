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

namespace RHApp.Views.CategoriaSugerencias
{
    public partial class Details : System.Web.UI.Page
    {
		protected RHApp.DatabaseModel.RhDataModel _db = new RHApp.DatabaseModel.RhDataModel();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Select methd to selects a single CategoriaSugerencia item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public RHApp.DatabaseModel.CategoriaSugerencia GetItem([FriendlyUrlSegmentsAttribute(0)]int? idCategoriaSugerencia)
        {
            if (idCategoriaSugerencia == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.CategoriaSugerencias.Where(m => m.idCategoriaSugerencia == idCategoriaSugerencia).FirstOrDefault();
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

