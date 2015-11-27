namespace RHApp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class SolicitudVacacione
    {
        [Key]
        public int idSolicitudVacaciones { get; set; }

        [Column(TypeName = "date")]
        public DateTime FechaInicio { get; set; }

        [Column(TypeName = "date")]
        public DateTime FechaFin { get; set; }

        [Column(TypeName = "date")]
        public DateTime FechaMaxAprobacion { get; set; }

        [Required]
        [StringLength(150)]
        public string Comentarios { get; set; }

        [Required]
        [StringLength(1)]
        public string Estado { get; set; }

        public int NumDias { get; set; }

        public int idEmpleado { get; set; }

        public int idEscalonamientoVacacion { get; set; }

        public virtual Empleado Empleado { get; set; }

        public virtual EscalonamientoVacacione EscalonamientoVacacione { get; set; }
    }
}
