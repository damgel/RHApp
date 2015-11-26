namespace RHApp.DatabaseModel
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

        [StringLength(50)]
        public string Departamento { get; set; }

        [StringLength(50)]
        public string Nombre { get; set; }

        [StringLength(50)]
        public string Ubicacion { get; set; }

        [StringLength(50)]
        public string PlazaPadre { get; set; }

        [StringLength(50)]
        public string Contrato { get; set; }

        [Column(TypeName = "date")]
        public DateTime? FechaCreacion { get; set; }

        [Column(TypeName = "date")]
        public DateTime FechaModificacion { get; set; }

        public int UsuarioModificacion { get; set; }

        [StringLength(100)]
        public string OfertaTrabajo { get; set; }

        [StringLength(100)]
        public string RelojMarcador { get; set; }

        public virtual ICollection<Empleado> Empleados { get; set; }
    }
}
