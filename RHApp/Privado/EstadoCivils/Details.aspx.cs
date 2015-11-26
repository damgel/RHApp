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

namespace RHApp.Privado.EstadoCivils
{
    public partial class Details : System.Web.UI.Page
    {
		protected RHApp.Models.EntitiesModels _db = new RHApp.Models.EntitiesModels();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Select methd to selects a single EstadoCivil item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public RHApp.Models.EstadoCivil GetItem([FriendlyUrlSegmentsAttribute(0)]int? idEstadoCivil)
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

