namespace RHApp.DatabaseModel
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
        [StringLength(50)]
        public string Usuario1 { get; set; }

        [StringLength(150)]
        public string Password { get; set; }

        [StringLength(10)]
        public string FechaCreacion { get; set; }

        [StringLength(10)]
        public string Estado { get; set; }

        public virtual ICollection<Empleado> Empleados { get; set; }
    }
}
