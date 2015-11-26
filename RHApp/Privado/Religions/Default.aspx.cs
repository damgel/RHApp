using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using RHApp.Models;

namespace RHApp.Privado.Religions
{
    public partial class Default : System.Web.UI.Page
    {
		protected RHApp.Models.EntitiesModels _db = new RHApp.Models.EntitiesModels();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of Religion entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<RHApp.Models.Religion> GetData()
        {
            return _db.Religions;
        }
    }
}

