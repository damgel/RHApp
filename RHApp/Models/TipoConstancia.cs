namespace RHApp.DatabaseModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TipoConstancia")]
    public partial class TipoConstancia
    {
        public TipoConstancia()
        {
            SolicitudConstancias = new HashSet<SolicitudConstancia>();
        }

        [Key]
        public int idTipoConstancia { get; set; }

        [Required]
        [StringLength(150)]
        public string Nombre { get; set; }

        [Required]
        [StringLength(10)]
        public string MostrarDescuento { get; set; }

        public virtual ICollection<SolicitudConstancia> SolicitudConstancias { get; set; }
    }
}
