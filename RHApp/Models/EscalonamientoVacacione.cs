namespace RHApp.DatabaseModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class EscalonamientoVacacione
    {
        public EscalonamientoVacacione()
        {
            SolicitudVacaciones = new HashSet<SolicitudVacacione>();
        }

        [Key]
        public int idEscalonamientoVacaciones { get; set; }

        [Required]
        [StringLength(150)]
        public string Nombre { get; set; }

        public int Dias { get; set; }

        public virtual ICollection<SolicitudVacacione> SolicitudVacaciones { get; set; }
    }
}
