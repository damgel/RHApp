using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using RHApp.Models;

namespace RHApp.Privado.SolicitudConstancias
{
    public partial class Default : System.Web.UI.Page
    {
		protected RHApp.Models.EntitiesModels _db = new RHApp.Models.EntitiesModels();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of SolicitudConstancia entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<RHApp.Models.SolicitudConstancia> GetData()
        {
            return _db.SolicitudConstancias.Include(m => m.Empleado).Include(m => m.TipoConstancia).Include(m => m.TipoEnvio);
        }
        public IQueryable<RHApp.Models.SolicitudConstancia> GetAprobadas()
        {
            return _db.SolicitudConstancias.Include(m => m.Empleado).Include(m => m.TipoConstancia).Include(m => m.TipoEnvio).Where(e=>e.Estado.Equals("A"));
        }
        public IQueryable<RHApp.Models.SolicitudConstancia> GetPendientes()
        {
            return _db.SolicitudConstancias.Include(m => m.Empleado).Include(m => m.TipoConstancia).Include(m => m.TipoEnvio).Where(e => e.Estado.Equals("P"));
        }
    }
}

