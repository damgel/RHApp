namespace RHApp.DatabaseModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("EscalonamientoPermisos")]
    public partial class EscalonamientoPermiso
    {
        public EscalonamientoPermiso()
        {
            SolicitudPermisoes = new HashSet<SolicitudPermiso>();
        }

        [Key]
        public int idEscalonamientoPermisos { get; set; }

        [Required]
        [StringLength(150)]
        public string Nombre { get; set; }

        public int Dias { get; set; }

        public virtual ICollection<SolicitudPermiso> SolicitudPermisoes { get; set; }
    }
}
