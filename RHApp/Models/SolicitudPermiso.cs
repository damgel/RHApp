namespace RHApp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SolicitudPermiso")]
    public partial class SolicitudPermiso
    {
        [Key]
        public int idSolicitudPermiso { get; set; }

        [Column(TypeName = "date")]
        public DateTime FechaInicio { get; set; }

        [Column(TypeName = "date")]
        public DateTime FechaFin { get; set; }

        public int DiasSolicitados { get; set; }

        public int? DiasAprobados { get; set; }

        [Required]
        [StringLength(50)]
        public string JefeRecibe { get; set; }

        [Column(TypeName = "date")]
        public DateTime FechaGrabacion { get; set; }

        [Column(TypeName = "date")]
        public DateTime? FechaAprobacion { get; set; }

        [Required]
        [StringLength(10)]
        public string Estado { get; set; }

        [StringLength(150)]
        public string Comentarios { get; set; }

        public int idEmpleado { get; set; }

        public int idEscalonamientoPermiso { get; set; }

        public int idTipoPermiso { get; set; }

        public virtual Empleado Empleado { get; set; }

        public virtual EscalonamientoPermiso EscalonamientoPermiso { get; set; }

        public virtual TipoPermiso TipoPermiso { get; set; }
    }
}
