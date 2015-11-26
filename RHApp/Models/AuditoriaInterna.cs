namespace RHApp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("AuditoriaInterna")]
    public partial class AuditoriaInterna
    {
        [Key]
        public int idAuditoriaInterna { get; set; }

        [Column(TypeName = "date")]
        public DateTime FechaModificacion { get; set; }

        [StringLength(150)]
        public string CambiosRealizados { get; set; }

        public int idEmpleado { get; set; }

        public virtual Empleado Empleado { get; set; }
    }
}
