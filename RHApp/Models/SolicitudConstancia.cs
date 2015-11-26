namespace RHApp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SolicitudConstancia")]
    public partial class SolicitudConstancia
    {
        [Key]
        public int idSolicitudConstancia { get; set; }

        [Column(TypeName = "date")]
        public DateTime FechaSolicitud { get; set; }

        [Column(TypeName = "date")]
        public DateTime? FechaImpresion { get; set; }

        public int? NumeroImpresiones { get; set; }

        public int? EmpleadoImprime { get; set; }

        [Required]
        [StringLength(150)]
        public string Dirigido { get; set; }

        [Required]
        [StringLength(150)]
        public string Ciudad { get; set; }

        [Required]
        [StringLength(1)]
        public string Estado { get; set; }

        public int idEmpleado { get; set; }

        public int idTipoConstancia { get; set; }

        public int idTipoEnvio { get; set; }

        public virtual Empleado Empleado { get; set; }

        public virtual TipoConstancia TipoConstancia { get; set; }

        public virtual TipoEnvio TipoEnvio { get; set; }
    }
}
