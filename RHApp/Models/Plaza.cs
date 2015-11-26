namespace RHApp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Plaza
    {
        public Plaza()
        {
            Empleados = new HashSet<Empleado>();
        }

        [Key]
        public int idPlaza { get; set; }

        [Required]
        [StringLength(50)]
        public string Departamento { get; set; }

        [Required]
        [StringLength(50)]
        public string Nombre { get; set; }

        [Required]
        [StringLength(50)]
        public string Ubicacion { get; set; }

        [Required]
        [StringLength(50)]
        public string PlazaPadre { get; set; }

        [Required]
        [StringLength(50)]
        public string Contrato { get; set; }

        [Column(TypeName = "date")]
        public DateTime FechaCreacion { get; set; }

        [Column(TypeName = "date")]
        public DateTime FechaModificacion { get; set; }

        [Required]
        [StringLength(100)]
        public string OfertaTrabajo { get; set; }

        [Required]
        [StringLength(100)]
        public string RelojMarcador { get; set; }

        public virtual ICollection<Empleado> Empleados { get; set; }
    }
}
