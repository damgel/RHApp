USE [RH]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SolicitudVacaciones_EscalonamientoVacaciones]') AND parent_object_id = OBJECT_ID(N'[dbo].[SolicitudVacaciones]'))
ALTER TABLE [dbo].[SolicitudVacaciones] DROP CONSTRAINT [FK_SolicitudVacaciones_EscalonamientoVacaciones]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SolicitudVacaciones_Empleados]') AND parent_object_id = OBJECT_ID(N'[dbo].[SolicitudVacaciones]'))
ALTER TABLE [dbo].[SolicitudVacaciones] DROP CONSTRAINT [FK_SolicitudVacaciones_Empleados]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SolicitudPermiso_TipoPermiso]') AND parent_object_id = OBJECT_ID(N'[dbo].[SolicitudPermiso]'))
ALTER TABLE [dbo].[SolicitudPermiso] DROP CONSTRAINT [FK_SolicitudPermiso_TipoPermiso]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SolicitudPermiso_EscalonamientoPermisos]') AND parent_object_id = OBJECT_ID(N'[dbo].[SolicitudPermiso]'))
ALTER TABLE [dbo].[SolicitudPermiso] DROP CONSTRAINT [FK_SolicitudPermiso_EscalonamientoPermisos]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SolicitudPermiso_Empleados]') AND parent_object_id = OBJECT_ID(N'[dbo].[SolicitudPermiso]'))
ALTER TABLE [dbo].[SolicitudPermiso] DROP CONSTRAINT [FK_SolicitudPermiso_Empleados]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SolicitudConstancia_TipoEnvio]') AND parent_object_id = OBJECT_ID(N'[dbo].[SolicitudConstancia]'))
ALTER TABLE [dbo].[SolicitudConstancia] DROP CONSTRAINT [FK_SolicitudConstancia_TipoEnvio]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SolicitudConstancia_TipoConstancia]') AND parent_object_id = OBJECT_ID(N'[dbo].[SolicitudConstancia]'))
ALTER TABLE [dbo].[SolicitudConstancia] DROP CONSTRAINT [FK_SolicitudConstancia_TipoConstancia]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SolicitudConstancia_Empleados]') AND parent_object_id = OBJECT_ID(N'[dbo].[SolicitudConstancia]'))
ALTER TABLE [dbo].[SolicitudConstancia] DROP CONSTRAINT [FK_SolicitudConstancia_Empleados]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleados_Usuarios]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleados]'))
ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT [FK_Empleados_Usuarios]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleados_TipoSalario]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleados]'))
ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT [FK_Empleados_TipoSalario]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleados_Religion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleados]'))
ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT [FK_Empleados_Religion]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleados_Plazas]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleados]'))
ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT [FK_Empleados_Plazas]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleados_Pais]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleados]'))
ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT [FK_Empleados_Pais]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleados_FormaDePago]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleados]'))
ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT [FK_Empleados_FormaDePago]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleados_EstadoCivil]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleados]'))
ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT [FK_Empleados_EstadoCivil]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BuzonSugerencia_Empleados]') AND parent_object_id = OBJECT_ID(N'[dbo].[BuzonSugerencia]'))
ALTER TABLE [dbo].[BuzonSugerencia] DROP CONSTRAINT [FK_BuzonSugerencia_Empleados]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BuzonSugerencia_CategoriaSugerencia]') AND parent_object_id = OBJECT_ID(N'[dbo].[BuzonSugerencia]'))
ALTER TABLE [dbo].[BuzonSugerencia] DROP CONSTRAINT [FK_BuzonSugerencia_CategoriaSugerencia]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AuditoriaInterna_Empleados]') AND parent_object_id = OBJECT_ID(N'[dbo].[AuditoriaInterna]'))
ALTER TABLE [dbo].[AuditoriaInterna] DROP CONSTRAINT [FK_AuditoriaInterna_Empleados]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Usuarios]') AND type in (N'U'))
DROP TABLE [dbo].[Usuarios]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoSalario]') AND type in (N'U'))
DROP TABLE [dbo].[TipoSalario]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoPermiso]') AND type in (N'U'))
DROP TABLE [dbo].[TipoPermiso]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoEnvio]') AND type in (N'U'))
DROP TABLE [dbo].[TipoEnvio]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoConstancia]') AND type in (N'U'))
DROP TABLE [dbo].[TipoConstancia]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SolicitudVacaciones]') AND type in (N'U'))
DROP TABLE [dbo].[SolicitudVacaciones]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SolicitudPermiso]') AND type in (N'U'))
DROP TABLE [dbo].[SolicitudPermiso]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SolicitudConstancia]') AND type in (N'U'))
DROP TABLE [dbo].[SolicitudConstancia]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Religion]') AND type in (N'U'))
DROP TABLE [dbo].[Religion]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Plazas]') AND type in (N'U'))
DROP TABLE [dbo].[Plazas]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pais]') AND type in (N'U'))
DROP TABLE [dbo].[Pais]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FormaDePago]') AND type in (N'U'))
DROP TABLE [dbo].[FormaDePago]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EstadoCivil]') AND type in (N'U'))
DROP TABLE [dbo].[EstadoCivil]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EscalonamientoVacaciones]') AND type in (N'U'))
DROP TABLE [dbo].[EscalonamientoVacaciones]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EscalonamientoPermisos]') AND type in (N'U'))
DROP TABLE [dbo].[EscalonamientoPermisos]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleados]') AND type in (N'U'))
DROP TABLE [dbo].[Empleados]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CategoriaSugerencia]') AND type in (N'U'))
DROP TABLE [dbo].[CategoriaSugerencia]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BuzonSugerencia]') AND type in (N'U'))
DROP TABLE [dbo].[BuzonSugerencia]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AuditoriaInterna]') AND type in (N'U'))
DROP TABLE [dbo].[AuditoriaInterna]
GO
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'm2ss')
DROP SCHEMA [m2ss]
GO
USE [master]
GO
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'RH')
DROP DATABASE [RH]
GO
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'RH')
BEGIN
CREATE DATABASE [RH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RH', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\RH.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'RH_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\RH_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
ALTER DATABASE [RH] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RH] SET ARITHABORT OFF 
GO
ALTER DATABASE [RH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RH] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RH] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RH] SET  MULTI_USER 
GO
ALTER DATABASE [RH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RH] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [RH] SET DELAYED_DURABILITY = DISABLED 
GO
USE [RH]
GO
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'm2ss')
EXEC sys.sp_executesql N'CREATE SCHEMA [m2ss]'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AuditoriaInterna]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AuditoriaInterna](
	[idAuditoriaInterna] [int] IDENTITY(1,1) NOT NULL,
	[FechaModificacion] [date] NOT NULL,
	[CambiosRealizados] [nchar](150) NULL,
	[idEmpleado] [int] NOT NULL,
 CONSTRAINT [PK_AuditoriaInterna] PRIMARY KEY CLUSTERED 
(
	[idAuditoriaInterna] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BuzonSugerencia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BuzonSugerencia](
	[idBuzonSugerencia] [int] IDENTITY(1,1) NOT NULL,
	[Asunto] [nchar](50) NOT NULL,
	[Detalles] [nchar](250) NOT NULL,
	[idEmpleado] [int] NOT NULL,
	[idCategoriaSugerencia] [int] NOT NULL,
 CONSTRAINT [PK_BuzonSugerencia] PRIMARY KEY CLUSTERED 
(
	[idBuzonSugerencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CategoriaSugerencia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CategoriaSugerencia](
	[idCategoriaSugerencia] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nchar](150) NOT NULL,
 CONSTRAINT [PK_CategoriaSugerencia] PRIMARY KEY CLUSTERED 
(
	[idCategoriaSugerencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleados]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Empleados](
	[idEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[PrimerNombre] [nchar](50) NOT NULL,
	[SegundoNombre] [nchar](50) NOT NULL,
	[TercerNombre] [nchar](50) NULL,
	[PrimerApellido] [nchar](50) NOT NULL,
	[SegundoApellido] [nchar](50) NOT NULL,
	[ApellidoCasado] [nchar](50) NULL,
	[Genero] [char](1) NOT NULL,
	[Direccion] [nchar](250) NOT NULL,
	[Salario] [smallmoney] NOT NULL,
	[Estado] [char](10) NOT NULL,
	[Jornada] [nchar](50) NOT NULL,
	[Vehiculo] [char](1) NOT NULL,
	[TelefonoCasa] [nchar](10) NULL,
	[TelefonoMovil] [nchar](10) NULL,
	[TelefonoOficina] [nchar](10) NULL,
	[Extension] [nchar](10) NULL,
	[Email] [nchar](150) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[FechaContratacion] [date] NOT NULL,
	[FechaDespido] [date] NULL,
	[FechaGrabacion] [date] NOT NULL,
	[idUsuario] [int] NOT NULL,
	[idPais] [int] NOT NULL,
	[idTipoSalario] [int] NOT NULL,
	[idPlaza] [int] NOT NULL,
	[idEstadoCivil] [int] NOT NULL,
	[idFormaDePago] [int] NOT NULL,
	[idReligion] [int] NOT NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EscalonamientoPermisos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EscalonamientoPermisos](
	[idEscalonamientoPermisos] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](150) NOT NULL,
	[Dias] [int] NOT NULL,
 CONSTRAINT [PK_EscalonamientoPermisos] PRIMARY KEY CLUSTERED 
(
	[idEscalonamientoPermisos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EscalonamientoVacaciones]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EscalonamientoVacaciones](
	[idEscalonamientoVacaciones] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](150) NOT NULL,
	[Dias] [int] NOT NULL,
 CONSTRAINT [PK_EscalonamientoVacaciones] PRIMARY KEY CLUSTERED 
(
	[idEscalonamientoVacaciones] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EstadoCivil]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EstadoCivil](
	[idEstadoCivil] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nchar](25) NOT NULL,
	[FechaGrabacion] [date] NOT NULL,
	[UsuarioGrabacion] [int] NOT NULL,
 CONSTRAINT [PK_EstadoCivil] PRIMARY KEY CLUSTERED 
(
	[idEstadoCivil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FormaDePago]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FormaDePago](
	[idFormaDePago] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nchar](50) NOT NULL,
	[FechaCreacion] [nchar](10) NOT NULL,
 CONSTRAINT [PK_FormaDePago] PRIMARY KEY CLUSTERED 
(
	[idFormaDePago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pais]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Pais](
	[idPais] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](50) NOT NULL,
	[Gerundio] [nchar](10) NOT NULL,
	[CodigoArea] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[idPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Plazas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Plazas](
	[idPlaza] [int] IDENTITY(1,1) NOT NULL,
	[Departamento] [nchar](50) NOT NULL,
	[Nombre] [nchar](50) NOT NULL,
	[Ubicacion] [nchar](50) NOT NULL,
	[PlazaPadre] [nchar](50) NOT NULL,
	[Contrato] [nchar](50) NOT NULL,
	[FechaCreacion] [date] NOT NULL,
	[FechaModificacion] [date] NOT NULL,
	[OfertaTrabajo] [nchar](100) NOT NULL,
	[RelojMarcador] [nchar](100) NOT NULL,
 CONSTRAINT [PK_Plazas] PRIMARY KEY CLUSTERED 
(
	[idPlaza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Religion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Religion](
	[idReligion] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nchar](150) NOT NULL,
	[FechaCreacion] [date] NOT NULL,
 CONSTRAINT [PK_Religion] PRIMARY KEY CLUSTERED 
(
	[idReligion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SolicitudConstancia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SolicitudConstancia](
	[idSolicitudConstancia] [int] IDENTITY(1,1) NOT NULL,
	[FechaSolicitud] [date] NOT NULL,
	[FechaImpresion] [date] NULL,
	[NumeroImpresiones] [int] NULL,
	[EmpleadoImprime] [int] NULL,
	[Dirigido] [nchar](150) NOT NULL,
	[Ciudad] [nchar](150) NOT NULL,
	[Estado] [char](1) NOT NULL,
	[idEmpleado] [int] NOT NULL,
	[idTipoConstancia] [int] NOT NULL,
	[idTipoEnvio] [int] NOT NULL,
 CONSTRAINT [PK_SolicitudConstancia] PRIMARY KEY CLUSTERED 
(
	[idSolicitudConstancia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SolicitudPermiso]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SolicitudPermiso](
	[idSolicitudPermiso] [int] IDENTITY(1,1) NOT NULL,
	[FechaInicio] [date] NOT NULL,
	[FechaFin] [date] NOT NULL,
	[DiasSolicitados] [int] NOT NULL,
	[DiasAprobados] [int] NULL,
	[JefeRecibe] [nchar](50) NOT NULL,
	[FechaGrabacion] [date] NOT NULL,
	[FechaAprobacion] [date] NULL,
	[Estado] [nchar](10) NOT NULL,
	[Comentarios] [nchar](150) NULL,
	[idEmpleado] [int] NOT NULL,
	[idEscalonamientoPermiso] [int] NOT NULL,
	[idTipoPermiso] [int] NOT NULL,
 CONSTRAINT [PK_SolicitudPermiso] PRIMARY KEY CLUSTERED 
(
	[idSolicitudPermiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SolicitudVacaciones]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SolicitudVacaciones](
	[idSolicitudVacaciones] [int] IDENTITY(1,1) NOT NULL,
	[FechaInicio] [date] NOT NULL,
	[FechaFin] [date] NOT NULL,
	[FechaMaxAprobacion] [date] NULL,
	[Comentarios] [nchar](150) NOT NULL,
	[Estado] [char](1) NOT NULL,
	[NumDias] [int] NOT NULL,
	[idEmpleado] [int] NOT NULL,
	[idEscalonamientoVacacion] [int] NOT NULL,
 CONSTRAINT [PK_SolicitudVacaciones] PRIMARY KEY CLUSTERED 
(
	[idSolicitudVacaciones] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoConstancia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TipoConstancia](
	[idTipoConstancia] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](150) NOT NULL,
	[MostrarDescuento] [nchar](10) NOT NULL,
 CONSTRAINT [PK_TipoConstancia] PRIMARY KEY CLUSTERED 
(
	[idTipoConstancia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoEnvio]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TipoEnvio](
	[idTipoEnvio] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nchar](100) NOT NULL,
	[FechaCreacion] [date] NOT NULL,
 CONSTRAINT [PK_TipoEnvio] PRIMARY KEY CLUSTERED 
(
	[idTipoEnvio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoPermiso]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TipoPermiso](
	[idTipoPermiso] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](10) NOT NULL,
	[GoceSueldo] [char](10) NOT NULL,
	[DiasMax] [int] NOT NULL,
	[RequiereComprobante] [char](10) NOT NULL,
	[EscalonamientoDias] [int] NOT NULL,
	[EscalonamientoPermisos] [int] NOT NULL,
 CONSTRAINT [PK_TipoPermiso] PRIMARY KEY CLUSTERED 
(
	[idTipoPermiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoSalario]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TipoSalario](
	[idTipoSalario] [int] IDENTITY(1,1) NOT NULL,
	[ValorInicial] [smallmoney] NOT NULL,
	[ValorFinal] [smallmoney] NOT NULL,
 CONSTRAINT [PK_TipoSalario] PRIMARY KEY CLUSTERED 
(
	[idTipoSalario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Usuarios]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Usuarios](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [nchar](50) NOT NULL,
	[Password] [nchar](150) NOT NULL,
	[FechaCreacion] [date] NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AuditoriaInterna_Empleados]') AND parent_object_id = OBJECT_ID(N'[dbo].[AuditoriaInterna]'))
ALTER TABLE [dbo].[AuditoriaInterna]  WITH CHECK ADD  CONSTRAINT [FK_AuditoriaInterna_Empleados] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleados] ([idEmpleado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AuditoriaInterna_Empleados]') AND parent_object_id = OBJECT_ID(N'[dbo].[AuditoriaInterna]'))
ALTER TABLE [dbo].[AuditoriaInterna] CHECK CONSTRAINT [FK_AuditoriaInterna_Empleados]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BuzonSugerencia_CategoriaSugerencia]') AND parent_object_id = OBJECT_ID(N'[dbo].[BuzonSugerencia]'))
ALTER TABLE [dbo].[BuzonSugerencia]  WITH CHECK ADD  CONSTRAINT [FK_BuzonSugerencia_CategoriaSugerencia] FOREIGN KEY([idCategoriaSugerencia])
REFERENCES [dbo].[CategoriaSugerencia] ([idCategoriaSugerencia])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BuzonSugerencia_CategoriaSugerencia]') AND parent_object_id = OBJECT_ID(N'[dbo].[BuzonSugerencia]'))
ALTER TABLE [dbo].[BuzonSugerencia] CHECK CONSTRAINT [FK_BuzonSugerencia_CategoriaSugerencia]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BuzonSugerencia_Empleados]') AND parent_object_id = OBJECT_ID(N'[dbo].[BuzonSugerencia]'))
ALTER TABLE [dbo].[BuzonSugerencia]  WITH CHECK ADD  CONSTRAINT [FK_BuzonSugerencia_Empleados] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleados] ([idEmpleado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BuzonSugerencia_Empleados]') AND parent_object_id = OBJECT_ID(N'[dbo].[BuzonSugerencia]'))
ALTER TABLE [dbo].[BuzonSugerencia] CHECK CONSTRAINT [FK_BuzonSugerencia_Empleados]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleados_EstadoCivil]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleados]'))
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_EstadoCivil] FOREIGN KEY([idEstadoCivil])
REFERENCES [dbo].[EstadoCivil] ([idEstadoCivil])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleados_EstadoCivil]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleados]'))
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_EstadoCivil]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleados_FormaDePago]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleados]'))
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_FormaDePago] FOREIGN KEY([idFormaDePago])
REFERENCES [dbo].[FormaDePago] ([idFormaDePago])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleados_FormaDePago]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleados]'))
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_FormaDePago]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleados_Pais]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleados]'))
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Pais] FOREIGN KEY([idPais])
REFERENCES [dbo].[Pais] ([idPais])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleados_Pais]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleados]'))
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Pais]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleados_Plazas]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleados]'))
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Plazas] FOREIGN KEY([idPlaza])
REFERENCES [dbo].[Plazas] ([idPlaza])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleados_Plazas]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleados]'))
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Plazas]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleados_Religion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleados]'))
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Religion] FOREIGN KEY([idReligion])
REFERENCES [dbo].[Religion] ([idReligion])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleados_Religion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleados]'))
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Religion]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleados_TipoSalario]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleados]'))
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_TipoSalario] FOREIGN KEY([idTipoSalario])
REFERENCES [dbo].[TipoSalario] ([idTipoSalario])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleados_TipoSalario]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleados]'))
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_TipoSalario]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleados_Usuarios]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleados]'))
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Usuarios] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuarios] ([idUsuario])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Empleados_Usuarios]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empleados]'))
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Usuarios]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SolicitudConstancia_Empleados]') AND parent_object_id = OBJECT_ID(N'[dbo].[SolicitudConstancia]'))
ALTER TABLE [dbo].[SolicitudConstancia]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudConstancia_Empleados] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleados] ([idEmpleado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SolicitudConstancia_Empleados]') AND parent_object_id = OBJECT_ID(N'[dbo].[SolicitudConstancia]'))
ALTER TABLE [dbo].[SolicitudConstancia] CHECK CONSTRAINT [FK_SolicitudConstancia_Empleados]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SolicitudConstancia_TipoConstancia]') AND parent_object_id = OBJECT_ID(N'[dbo].[SolicitudConstancia]'))
ALTER TABLE [dbo].[SolicitudConstancia]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudConstancia_TipoConstancia] FOREIGN KEY([idTipoConstancia])
REFERENCES [dbo].[TipoConstancia] ([idTipoConstancia])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SolicitudConstancia_TipoConstancia]') AND parent_object_id = OBJECT_ID(N'[dbo].[SolicitudConstancia]'))
ALTER TABLE [dbo].[SolicitudConstancia] CHECK CONSTRAINT [FK_SolicitudConstancia_TipoConstancia]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SolicitudConstancia_TipoEnvio]') AND parent_object_id = OBJECT_ID(N'[dbo].[SolicitudConstancia]'))
ALTER TABLE [dbo].[SolicitudConstancia]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudConstancia_TipoEnvio] FOREIGN KEY([idTipoEnvio])
REFERENCES [dbo].[TipoEnvio] ([idTipoEnvio])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SolicitudConstancia_TipoEnvio]') AND parent_object_id = OBJECT_ID(N'[dbo].[SolicitudConstancia]'))
ALTER TABLE [dbo].[SolicitudConstancia] CHECK CONSTRAINT [FK_SolicitudConstancia_TipoEnvio]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SolicitudPermiso_Empleados]') AND parent_object_id = OBJECT_ID(N'[dbo].[SolicitudPermiso]'))
ALTER TABLE [dbo].[SolicitudPermiso]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudPermiso_Empleados] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleados] ([idEmpleado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SolicitudPermiso_Empleados]') AND parent_object_id = OBJECT_ID(N'[dbo].[SolicitudPermiso]'))
ALTER TABLE [dbo].[SolicitudPermiso] CHECK CONSTRAINT [FK_SolicitudPermiso_Empleados]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SolicitudPermiso_EscalonamientoPermisos]') AND parent_object_id = OBJECT_ID(N'[dbo].[SolicitudPermiso]'))
ALTER TABLE [dbo].[SolicitudPermiso]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudPermiso_EscalonamientoPermisos] FOREIGN KEY([idEscalonamientoPermiso])
REFERENCES [dbo].[EscalonamientoPermisos] ([idEscalonamientoPermisos])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SolicitudPermiso_EscalonamientoPermisos]') AND parent_object_id = OBJECT_ID(N'[dbo].[SolicitudPermiso]'))
ALTER TABLE [dbo].[SolicitudPermiso] CHECK CONSTRAINT [FK_SolicitudPermiso_EscalonamientoPermisos]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SolicitudPermiso_TipoPermiso]') AND parent_object_id = OBJECT_ID(N'[dbo].[SolicitudPermiso]'))
ALTER TABLE [dbo].[SolicitudPermiso]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudPermiso_TipoPermiso] FOREIGN KEY([idTipoPermiso])
REFERENCES [dbo].[TipoPermiso] ([idTipoPermiso])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SolicitudPermiso_TipoPermiso]') AND parent_object_id = OBJECT_ID(N'[dbo].[SolicitudPermiso]'))
ALTER TABLE [dbo].[SolicitudPermiso] CHECK CONSTRAINT [FK_SolicitudPermiso_TipoPermiso]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SolicitudVacaciones_Empleados]') AND parent_object_id = OBJECT_ID(N'[dbo].[SolicitudVacaciones]'))
ALTER TABLE [dbo].[SolicitudVacaciones]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudVacaciones_Empleados] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleados] ([idEmpleado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SolicitudVacaciones_Empleados]') AND parent_object_id = OBJECT_ID(N'[dbo].[SolicitudVacaciones]'))
ALTER TABLE [dbo].[SolicitudVacaciones] CHECK CONSTRAINT [FK_SolicitudVacaciones_Empleados]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SolicitudVacaciones_EscalonamientoVacaciones]') AND parent_object_id = OBJECT_ID(N'[dbo].[SolicitudVacaciones]'))
ALTER TABLE [dbo].[SolicitudVacaciones]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudVacaciones_EscalonamientoVacaciones] FOREIGN KEY([idEscalonamientoVacacion])
REFERENCES [dbo].[EscalonamientoVacaciones] ([idEscalonamientoVacaciones])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SolicitudVacaciones_EscalonamientoVacaciones]') AND parent_object_id = OBJECT_ID(N'[dbo].[SolicitudVacaciones]'))
ALTER TABLE [dbo].[SolicitudVacaciones] CHECK CONSTRAINT [FK_SolicitudVacaciones_EscalonamientoVacaciones]
GO
USE [master]
GO
ALTER DATABASE [RH] SET  READ_WRITE 
GO
