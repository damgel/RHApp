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

namespace RHApp.Privado.SolicitudVacaciones
{
    public partial class Delete : System.Web.UI.Page
    {
		protected RHApp.Models.EntitiesModels _db = new RHApp.Models.EntitiesModels();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected SolicitudVacacione item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int idSolicitudVacaciones)
        {
            using (_db)
            {
                var item = _db.SolicitudVacaciones.Find(idSolicitudVacaciones);

                if (item != null)
                {
                    _db.SolicitudVacaciones.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single SolicitudVacacione item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public RHApp.Models.SolicitudVacacione GetItem([FriendlyUrlSegmentsAttribute(0)]int? idSolicitudVacaciones)
        {
            if (idSolicitudVacaciones == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.SolicitudVacaciones.Where(m => m.idSolicitudVacaciones == idSolicitudVacaciones).Include(m => m.Empleado).Include(m => m.EscalonamientoVacacione).FirstOrDefault();
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

