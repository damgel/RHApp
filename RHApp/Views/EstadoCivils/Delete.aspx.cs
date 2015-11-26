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

namespace RHApp.Views.EstadoCivils
{
    public partial class Delete : System.Web.UI.Page
    {
		protected RHApp.DatabaseModel.RhDataModel _db = new RHApp.DatabaseModel.RhDataModel();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected EstadoCivil item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int idEstadoCivil)
        {
            using (_db)
            {
                var item = _db.EstadoCivils.Find(idEstadoCivil);

                if (item != null)
                {
                    _db.EstadoCivils.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single EstadoCivil item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public RHApp.DatabaseModel.EstadoCivil GetItem([FriendlyUrlSegmentsAttribute(0)]int? idEstadoCivil)
        {
            if (idEstadoCivil == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.EstadoCivils.Where(m => m.idEstadoCivil == idEstadoCivil).FirstOrDefault();
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

