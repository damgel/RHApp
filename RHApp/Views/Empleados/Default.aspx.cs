using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using RHApp.DatabaseModel;

namespace RHApp.Views.Empleados
{
    public partial class Default : System.Web.UI.Page
    {
		protected RHApp.DatabaseModel.RhDataModel _db = new RHApp.DatabaseModel.RhDataModel();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of Empleado entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<RHApp.DatabaseModel.Empleado> GetData()
        {
            return _db.Empleados.Include(m => m.EstadoCivil).Include(m => m.FormaDePago).Include(m => m.Pai).Include(m => m.Plaza).Include(m => m.Religion).Include(m => m.TipoSalario).Include(m => m.Usuario);
        }
    }
}

