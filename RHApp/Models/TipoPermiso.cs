namespace RHApp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TipoPermiso")]
    public partial class TipoPermiso
    {
        public TipoPermiso()
        {
            SolicitudPermisoes = new HashSet<SolicitudPermiso>();
        }

        [Key]
        public int idTipoPermiso { get; set; }

        [Required]
        [StringLength(10)]
        public string Nombre { get; set; }

        [Required]
        [StringLength(10)]
        public string GoceSueldo { get; set; }

        public int DiasMax { get; set; }

        [Required]
        [StringLength(10)]
        public string RequiereComprobante { get; set; }

        public int EscalonamientoDias { get; set; }

        public int EscalonamientoPermisos { get; set; }

        public virtual ICollection<SolicitudPermiso> SolicitudPermisoes { get; set; }
    }
}
