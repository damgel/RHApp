namespace RHApp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("EstadoCivil")]
    public partial class EstadoCivil
    {
        public EstadoCivil()
        {
            Empleados = new HashSet<Empleado>();
        }

        [Key]
        public int idEstadoCivil { get; set; }

        [Required]
        [StringLength(25)]
        public string nombre { get; set; }

        [Column(TypeName = "date")]
        public DateTime FechaGrabacion { get; set; }

        public int UsuarioGrabacion { get; set; }

        public virtual ICollection<Empleado> Empleados { get; set; }
    }
}
