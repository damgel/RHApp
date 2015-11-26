namespace RHApp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("FormaDePago")]
    public partial class FormaDePago
    {
        public FormaDePago()
        {
            Empleados = new HashSet<Empleado>();
        }

        [Key]
        public int idFormaDePago { get; set; }

        [Required]
        [StringLength(50)]
        public string Descripcion { get; set; }

        [Required]
        [StringLength(10)]
        public string FechaCreacion { get; set; }

        public virtual ICollection<Empleado> Empleados { get; set; }
    }
}
