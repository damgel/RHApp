using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using RHApp.DatabaseModel;

namespace RHApp.Views.Empleados
{
    public partial class Delete : System.Web.UI.Page
    {
		protected RHApp.DatabaseModel.RhDataModel _db = new RHApp.DatabaseModel.RhDataModel();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected Empleado item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int idEmpleado)
        {
            using (_db)
            {
                var item = _db.Empleados.Find(idEmpleado);

                if (item != null)
                {
                    _db.Empleados.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single Empleado item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public RHApp.DatabaseModel.Empleado GetItem([FriendlyUrlSegmentsAttribute(0)]int? idEmpleado)
        {
            if (idEmpleado == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.Empleados.Where(m => m.idEmpleado == idEmpleado).Include(m => m.EstadoCivil).Include(m => m.FormaDePago).Include(m => m.Pai).Include(m => m.Plaza).Include(m => m.Religion).Include(m => m.TipoSalario).Include(m => m.Usuario).FirstOrDefault();
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

