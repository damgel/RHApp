using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using RHApp.DatabaseModel;

namespace RHApp.Views.CategoriaSugerencias
{
    public partial class Default : System.Web.UI.Page
    {
		protected RHApp.DatabaseModel.RhDataModel _db = new RHApp.DatabaseModel.RhDataModel();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of CategoriaSugerencia entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<RHApp.DatabaseModel.CategoriaSugerencia> GetData()
        {
            return _db.CategoriaSugerencias;
        }
    }
}

