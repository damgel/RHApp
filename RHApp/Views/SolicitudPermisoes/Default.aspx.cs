using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using RHApp.DatabaseModel;

namespace RHApp.Views.SolicitudPermisoes
{
    public partial class Default : System.Web.UI.Page
    {
		protected RHApp.DatabaseModel.RhDataModel _db = new RHApp.DatabaseModel.RhDataModel();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of SolicitudPermiso entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<RHApp.DatabaseModel.SolicitudPermiso> GetData()
        {
            return _db.SolicitudPermisoes.Include(m => m.Empleado).Include(m => m.EscalonamientoPermiso).Include(m => m.TipoPermiso);
        }
    }
}

