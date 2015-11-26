namespace RHApp.DatabaseModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Pai
    {
        public Pai()
        {
            Empleados = new HashSet<Empleado>();
        }

        [Key]
        public int idPais { get; set; }

        [Required]
        [StringLength(50)]
        public string Nombre { get; set; }

        [Required]
        [StringLength(10)]
        public string Gerundio { get; set; }

        [Required]
        [StringLength(10)]
        public string CodigoArea { get; set; }

        public virtual ICollection<Empleado> Empleados { get; set; }
    }
}
