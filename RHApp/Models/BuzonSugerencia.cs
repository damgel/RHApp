namespace RHApp.DatabaseModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BuzonSugerencia")]
    public partial class BuzonSugerencia
    {
        [Key]
        public int idBuzonSugerencia { get; set; }

        [Required]
        [StringLength(50)]
        public string Asunto { get; set; }

        [Required]
        [StringLength(250)]
        public string Detalles { get; set; }

        public int idEmpleado { get; set; }

        public int idCategoriaSugerencia { get; set; }

        public virtual CategoriaSugerencia CategoriaSugerencia { get; set; }

        public virtual Empleado Empleado { get; set; }
    }
}
