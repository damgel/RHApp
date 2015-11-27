namespace RHApp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Empleados")]
    public partial class Empleado
    {
        public Empleado()
        {
            AuditoriaInternas = new HashSet<AuditoriaInterna>();
            BuzonSugerencias = new HashSet<BuzonSugerencia>();
            SolicitudConstancias = new HashSet<SolicitudConstancia>();
            SolicitudPermisoes = new HashSet<SolicitudPermiso>();
            SolicitudVacaciones = new HashSet<SolicitudVacacione>();
        }

        [Key]
        public int idEmpleado { get; set; }

        [Required]
        [StringLength(50)]
        public string PrimerNombre { get; set; }

        [Required]
        [StringLength(50)]
        public string SegundoNombre { get; set; }

        [StringLength(50)]
        public string TercerNombre { get; set; }

        [Required]
        [StringLength(50)]
        public string PrimerApellido { get; set; }

        [Required]
        [StringLength(50)]
        public string SegundoApellido { get; set; }

        [StringLength(50)]
        public string ApellidoCasado { get; set; }

        [Required]
        [StringLength(1)]
        public string Genero { get; set; }

        [Required]
        [StringLength(250)]
        public string Direccion { get; set; }

        [Column(TypeName = "smallmoney")]
        public decimal Salario { get; set; }

        [Required]
        [StringLength(10)]
        public string Estado { get; set; }

        [Required]
        [StringLength(50)]
        public string Jornada { get; set; }

        [Required]
        [StringLength(1)]
        public string Vehiculo { get; set; }

        [StringLength(10)]
        public string TelefonoCasa { get; set; }

        [StringLength(10)]
        public string TelefonoMovil { get; set; }

        [StringLength(10)]
        public string TelefonoOficina { get; set; }

        [StringLength(10)]
        public string Extension { get; set; }

        [Required]
        [StringLength(150)]
        public string Email { get; set; }

        [Column(TypeName = "date")]
        public DateTime FechaNacimiento { get; set; }

        [Column(TypeName = "date")]
        public DateTime FechaContratacion { get; set; }

        [Column(TypeName = "date")]
        public DateTime FechaDespido { get; set; }

        [Column(TypeName = "date")]
        public DateTime FechaGrabacion { get; set; }

        public int idUsuario { get; set; }

        public int idPais { get; set; }

        public int idTipoSalario { get; set; }

        public int idPlaza { get; set; }

        public int idEstadoCivil { get; set; }

        public int idFormaDePago { get; set; }

        public int idReligion { get; set; }

        public virtual ICollection<AuditoriaInterna> AuditoriaInternas { get; set; }

        public virtual ICollection<BuzonSugerencia> BuzonSugerencias { get; set; }

        public virtual EstadoCivil EstadoCivil { get; set; }

        public virtual FormaDePago FormaDePago { get; set; }

        public virtual Pai Pai { get; set; }

        public virtual Plaza Plaza { get; set; }

        public virtual Religion Religion { get; set; }

        public virtual TipoSalario TipoSalario { get; set; }

        public virtual Usuario Usuario { get; set; }

        public virtual ICollection<SolicitudConstancia> SolicitudConstancias { get; set; }

        public virtual ICollection<SolicitudPermiso> SolicitudPermisoes { get; set; }

        public virtual ICollection<SolicitudVacacione> SolicitudVacaciones { get; set; }
    }
}
