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

namespace RHApp.Privado.CategoriaSugerencias
{
    public partial class Delete : System.Web.UI.Page
    {
		protected RHApp.Models.EntitiesModels _db = new RHApp.Models.EntitiesModels();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected CategoriaSugerencia item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int idCategoriaSugerencia)
        {
            using (_db)
            {
                var item = _db.CategoriaSugerencias.Find(idCategoriaSugerencia);

                if (item != null)
                {
                    _db.CategoriaSugerencias.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single CategoriaSugerencia item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public RHApp.Models.CategoriaSugerencia GetItem([FriendlyUrlSegmentsAttribute(0)]int? idCategoriaSugerencia)
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

