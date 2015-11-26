namespace RHApp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Religion")]
    public partial class Religion
    {
        public Religion()
        {
            Empleados = new HashSet<Empleado>();
        }

        [Key]
        public int idReligion { get; set; }

        [Required]
        [StringLength(150)]
        public string nombre { get; set; }

        [Column(TypeName = "date")]
        public DateTime FechaCreacion { get; set; }

        public virtual ICollection<Empleado> Empleados { get; set; }
    }
}
