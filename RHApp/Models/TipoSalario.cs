namespace RHApp.DatabaseModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TipoSalario")]
    public partial class TipoSalario
    {
        public TipoSalario()
        {
            Empleados = new HashSet<Empleado>();
        }

        [Key]
        public int idTipoSalario { get; set; }

        [Column(TypeName = "smallmoney")]
        public decimal ValorInicial { get; set; }

        [Column(TypeName = "smallmoney")]
        public decimal ValorFinal { get; set; }

        public virtual ICollection<Empleado> Empleados { get; set; }
    }
}
