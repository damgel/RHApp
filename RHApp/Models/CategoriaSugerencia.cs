namespace RHApp.DatabaseModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CategoriaSugerencia")]
    public partial class CategoriaSugerencia
    {
        public CategoriaSugerencia()
        {
            BuzonSugerencias = new HashSet<BuzonSugerencia>();
        }

        [Key]
        public int idCategoriaSugerencia { get; set; }

        [Required]
        [StringLength(150)]
        public string nombre { get; set; }

        public virtual ICollection<BuzonSugerencia> BuzonSugerencias { get; set; }
    }
}
