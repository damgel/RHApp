namespace RHApp.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class EntitiesModels : DbContext
    {
        public EntitiesModels()
            : base("name=entitiesModelsCnn")
        {
        }

        public virtual DbSet<AuditoriaInterna> AuditoriaInternas { get; set; }
        public virtual DbSet<BuzonSugerencia> BuzonSugerencias { get; set; }
        public virtual DbSet<CategoriaSugerencia> CategoriaSugerencias { get; set; }
        public virtual DbSet<Empleado> Empleados { get; set; }
        public virtual DbSet<EscalonamientoPermiso> EscalonamientoPermisos { get; set; }
        public virtual DbSet<EscalonamientoVacacione> EscalonamientoVacaciones { get; set; }
        public virtual DbSet<EstadoCivil> EstadoCivils { get; set; }
        public virtual DbSet<FormaDePago> FormaDePagoes { get; set; }
        public virtual DbSet<Pai> Pais { get; set; }
        public virtual DbSet<Plaza> Plazas { get; set; }
        public virtual DbSet<Religion> Religions { get; set; }
        public virtual DbSet<SolicitudConstancia> SolicitudConstancias { get; set; }
        public virtual DbSet<SolicitudPermiso> SolicitudPermisoes { get; set; }
        public virtual DbSet<SolicitudVacacione> SolicitudVacaciones { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<TipoConstancia> TipoConstancias { get; set; }
        public virtual DbSet<TipoEnvio> TipoEnvios { get; set; }
        public virtual DbSet<TipoPermiso> TipoPermisoes { get; set; }
        public virtual DbSet<TipoSalario> TipoSalarios { get; set; }
        public virtual DbSet<Usuario> Usuarios { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<AuditoriaInterna>()
                .Property(e => e.CambiosRealizados)
                .IsFixedLength();

            modelBuilder.Entity<BuzonSugerencia>()
                .Property(e => e.Asunto)
                .IsFixedLength();

            modelBuilder.Entity<BuzonSugerencia>()
                .Property(e => e.Detalles)
                .IsFixedLength();

            modelBuilder.Entity<CategoriaSugerencia>()
                .Property(e => e.nombre)
                .IsFixedLength();

            modelBuilder.Entity<CategoriaSugerencia>()
                .HasMany(e => e.BuzonSugerencias)
                .WithRequired(e => e.CategoriaSugerencia)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Empleado>()
                .Property(e => e.PrimerNombre)
                .IsFixedLength();

            modelBuilder.Entity<Empleado>()
                .Property(e => e.SegundoNombre)
                .IsFixedLength();

            modelBuilder.Entity<Empleado>()
                .Property(e => e.TercerNombre)
                .IsFixedLength();

            modelBuilder.Entity<Empleado>()
                .Property(e => e.PrimerApellido)
                .IsFixedLength();

            modelBuilder.Entity<Empleado>()
                .Property(e => e.SegundoApellido)
                .IsFixedLength();

            modelBuilder.Entity<Empleado>()
                .Property(e => e.ApellidoCasado)
                .IsFixedLength();

            modelBuilder.Entity<Empleado>()
                .Property(e => e.Genero)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Empleado>()
                .Property(e => e.Direccion)
                .IsFixedLength();

            modelBuilder.Entity<Empleado>()
                .Property(e => e.Salario)
                .HasPrecision(10, 4);

            modelBuilder.Entity<Empleado>()
                .Property(e => e.Estado)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Empleado>()
                .Property(e => e.Jornada)
                .IsFixedLength();

            modelBuilder.Entity<Empleado>()
                .Property(e => e.Vehiculo)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Empleado>()
                .Property(e => e.TelefonoCasa)
                .IsFixedLength();

            modelBuilder.Entity<Empleado>()
                .Property(e => e.TelefonoMovil)
                .IsFixedLength();

            modelBuilder.Entity<Empleado>()
                .Property(e => e.TelefonoOficina)
                .IsFixedLength();

            modelBuilder.Entity<Empleado>()
                .Property(e => e.Extension)
                .IsFixedLength();

            modelBuilder.Entity<Empleado>()
                .Property(e => e.Email)
                .IsFixedLength();

            modelBuilder.Entity<Empleado>()
                .HasMany(e => e.AuditoriaInternas)
                .WithRequired(e => e.Empleado)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Empleado>()
                .HasMany(e => e.BuzonSugerencias)
                .WithRequired(e => e.Empleado)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Empleado>()
                .HasMany(e => e.SolicitudConstancias)
                .WithRequired(e => e.Empleado)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Empleado>()
                .HasMany(e => e.SolicitudPermisoes)
                .WithRequired(e => e.Empleado)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Empleado>()
                .HasMany(e => e.SolicitudVacaciones)
                .WithRequired(e => e.Empleado)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<EscalonamientoPermiso>()
                .Property(e => e.Nombre)
                .IsFixedLength();

            modelBuilder.Entity<EscalonamientoPermiso>()
                .HasMany(e => e.SolicitudPermisoes)
                .WithRequired(e => e.EscalonamientoPermiso)
                .HasForeignKey(e => e.idEscalonamientoPermiso)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<EscalonamientoVacacione>()
                .Property(e => e.Nombre)
                .IsFixedLength();

            modelBuilder.Entity<EscalonamientoVacacione>()
                .HasMany(e => e.SolicitudVacaciones)
                .WithRequired(e => e.EscalonamientoVacacione)
                .HasForeignKey(e => e.idEscalonamientoVacacion)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<EstadoCivil>()
                .Property(e => e.nombre)
                .IsFixedLength();

            modelBuilder.Entity<EstadoCivil>()
                .HasMany(e => e.Empleados)
                .WithRequired(e => e.EstadoCivil)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<FormaDePago>()
                .Property(e => e.Descripcion)
                .IsFixedLength();

            modelBuilder.Entity<FormaDePago>()
                .HasMany(e => e.Empleados)
                .WithRequired(e => e.FormaDePago)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Pai>()
                .Property(e => e.Nombre)
                .IsFixedLength();

            modelBuilder.Entity<Pai>()
                .Property(e => e.Gerundio)
                .IsFixedLength();

            modelBuilder.Entity<Pai>()
                .Property(e => e.CodigoArea)
                .IsFixedLength();

            modelBuilder.Entity<Pai>()
                .HasMany(e => e.Empleados)
                .WithRequired(e => e.Pai)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Plaza>()
                .Property(e => e.Departamento)
                .IsFixedLength();

            modelBuilder.Entity<Plaza>()
                .Property(e => e.Nombre)
                .IsFixedLength();

            modelBuilder.Entity<Plaza>()
                .Property(e => e.Ubicacion)
                .IsFixedLength();

            modelBuilder.Entity<Plaza>()
                .Property(e => e.PlazaPadre)
                .IsFixedLength();

            modelBuilder.Entity<Plaza>()
                .Property(e => e.Contrato)
                .IsFixedLength();

            modelBuilder.Entity<Plaza>()
                .Property(e => e.OfertaTrabajo)
                .IsFixedLength();

            modelBuilder.Entity<Plaza>()
                .Property(e => e.RelojMarcador)
                .IsFixedLength();

            modelBuilder.Entity<Plaza>()
                .HasMany(e => e.Empleados)
                .WithRequired(e => e.Plaza)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Religion>()
                .Property(e => e.nombre)
                .IsFixedLength();

            modelBuilder.Entity<Religion>()
                .HasMany(e => e.Empleados)
                .WithRequired(e => e.Religion)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SolicitudConstancia>()
                .Property(e => e.Dirigido)
                .IsFixedLength();

            modelBuilder.Entity<SolicitudConstancia>()
                .Property(e => e.Ciudad)
                .IsFixedLength();

            modelBuilder.Entity<SolicitudConstancia>()
                .Property(e => e.Estado)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<SolicitudPermiso>()
                .Property(e => e.JefeRecibe)
                .IsFixedLength();

            modelBuilder.Entity<SolicitudPermiso>()
                .Property(e => e.Estado)
                .IsFixedLength();

            modelBuilder.Entity<SolicitudPermiso>()
                .Property(e => e.Comentarios)
                .IsFixedLength();

            modelBuilder.Entity<SolicitudVacacione>()
                .Property(e => e.Comentarios)
                .IsFixedLength();

            modelBuilder.Entity<SolicitudVacacione>()
                .Property(e => e.Estado)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<TipoConstancia>()
                .Property(e => e.Nombre)
                .IsFixedLength();

            modelBuilder.Entity<TipoConstancia>()
                .Property(e => e.MostrarDescuento)
                .IsFixedLength();

            modelBuilder.Entity<TipoConstancia>()
                .HasMany(e => e.SolicitudConstancias)
                .WithRequired(e => e.TipoConstancia)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TipoEnvio>()
                .Property(e => e.nombre)
                .IsFixedLength();

            modelBuilder.Entity<TipoEnvio>()
                .HasMany(e => e.SolicitudConstancias)
                .WithRequired(e => e.TipoEnvio)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TipoPermiso>()
                .Property(e => e.Nombre)
                .IsFixedLength();

            modelBuilder.Entity<TipoPermiso>()
                .Property(e => e.GoceSueldo)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<TipoPermiso>()
                .Property(e => e.RequiereComprobante)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<TipoPermiso>()
                .HasMany(e => e.SolicitudPermisoes)
                .WithRequired(e => e.TipoPermiso)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TipoSalario>()
                .Property(e => e.ValorInicial)
                .HasPrecision(10, 4);

            modelBuilder.Entity<TipoSalario>()
                .Property(e => e.ValorFinal)
                .HasPrecision(10, 4);

            modelBuilder.Entity<TipoSalario>()
                .HasMany(e => e.Empleados)
                .WithRequired(e => e.TipoSalario)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Usuario>()
                .Property(e => e.Usuario1)
                .IsFixedLength();

            modelBuilder.Entity<Usuario>()
                .Property(e => e.Password)
                .IsFixedLength();

            modelBuilder.Entity<Usuario>()
                .Property(e => e.FechaCreacion);

            modelBuilder.Entity<Usuario>()
                .HasMany(e => e.Empleados)
                .WithRequired(e => e.Usuario)
                .WillCascadeOnDelete(false);
        }
    }
}
