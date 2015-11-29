﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using RHApp.Models;

namespace RHApp.Privado.TipoSalarios
{
    public partial class Details : System.Web.UI.Page
    {
		protected RHApp.Models.EntitiesModels _db = new RHApp.Models.EntitiesModels();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Select methd to selects a single TipoSalario item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public RHApp.Models.TipoSalario GetItem([FriendlyUrlSegmentsAttribute(0)]int? idTipoSalario)
        {
            if (idTipoSalario == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.TipoSalarios.Where(m => m.idTipoSalario == idTipoSalario).FirstOrDefault();
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

