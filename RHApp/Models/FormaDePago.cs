namespace RHApp.DatabaseModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("FormaDePago")]
    public partial class FormaDePago
    {
        public FormaDePago()
        {
            Empleados = new HashSet<Empleado>();
        }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int idFormaDePago { get; set; }

        [StringLength(10)]
        public string Descripcion { get; set; }

        [StringLength(10)]
        public string FechaCreacion { get; set; }

        public virtual ICollection<Empleado> Empleados { get; set; }
    }
}
