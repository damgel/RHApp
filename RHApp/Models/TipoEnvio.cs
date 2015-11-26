namespace RHApp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TipoEnvio")]
    public partial class TipoEnvio
    {
        public TipoEnvio()
        {
            SolicitudConstancias = new HashSet<SolicitudConstancia>();
        }

        [Key]
        public int idTipoEnvio { get; set; }

        [Required]
        [StringLength(100)]
        public string nombre { get; set; }

        [Column(TypeName = "date")]
        public DateTime FechaCreacion { get; set; }

        public virtual ICollection<SolicitudConstancia> SolicitudConstancias { get; set; }
    }
}
