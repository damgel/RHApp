namespace RHApp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Usuario
    {
        public Usuario()
        {
            Empleados = new HashSet<Empleado>();
        }

        [Key]
        public int idUsuario { get; set; }

        [Column("Usuario")]
        [Required]
        [StringLength(50)]
        public string Usuario1 { get; set; }

        [Required]
        [StringLength(150)]
        public string Password { get; set; }

        [Required]
        [StringLength(10)]
        public string FechaCreacion { get; set; }

        public virtual ICollection<Empleado> Empleados { get; set; }
    }
}
