USE [master]
GO
/****** Object:  Database [n5now]    Script Date: 01/10/2023 22:43:24 ******/
CREATE DATABASE [n5now]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'n5now', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\n5now.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'n5now_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\n5now_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [n5now] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [n5now].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [n5now] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [n5now] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [n5now] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [n5now] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [n5now] SET ARITHABORT OFF 
GO
ALTER DATABASE [n5now] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [n5now] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [n5now] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [n5now] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [n5now] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [n5now] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [n5now] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [n5now] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [n5now] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [n5now] SET  DISABLE_BROKER 
GO
ALTER DATABASE [n5now] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [n5now] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [n5now] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [n5now] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [n5now] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [n5now] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [n5now] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [n5now] SET RECOVERY FULL 
GO
ALTER DATABASE [n5now] SET  MULTI_USER 
GO
ALTER DATABASE [n5now] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [n5now] SET DB_CHAINING OFF 
GO
ALTER DATABASE [n5now] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [n5now] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [n5now] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [n5now] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'n5now', N'ON'
GO
ALTER DATABASE [n5now] SET QUERY_STORE = OFF
GO
USE [n5now]
GO
/****** Object:  Table [dbo].[Permisos]    Script Date: 01/10/2023 22:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permisos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NombreEmpleado] [text] NOT NULL,
	[ApellidoEmpleado] [text] NOT NULL,
	[TipoPermiso] [int] NOT NULL,
	[FechaPermiso] [date] NOT NULL,
 CONSTRAINT [PK_Permisos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoPermisos]    Script Date: 01/10/2023 22:43:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoPermisos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [text] NULL,
 CONSTRAINT [PK_TipoPermisos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Permisos] ON 

INSERT [dbo].[Permisos] ([Id], [NombreEmpleado], [ApellidoEmpleado], [TipoPermiso], [FechaPermiso]) VALUES (1, N'Mauricio', N'Pérez', 1, CAST(N'2023-09-27' AS Date))
INSERT [dbo].[Permisos] ([Id], [NombreEmpleado], [ApellidoEmpleado], [TipoPermiso], [FechaPermiso]) VALUES (2, N'Otro', N'Mas', 1, CAST(N'2023-09-29' AS Date))
INSERT [dbo].[Permisos] ([Id], [NombreEmpleado], [ApellidoEmpleado], [TipoPermiso], [FechaPermiso]) VALUES (3, N'Pedro Antonio', N'Pérez', 1, CAST(N'2023-09-27' AS Date))
SET IDENTITY_INSERT [dbo].[Permisos] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoPermisos] ON 

INSERT [dbo].[TipoPermisos] ([Id], [Descripcion]) VALUES (1, N'Permiso general')
INSERT [dbo].[TipoPermisos] ([Id], [Descripcion]) VALUES (2, N'Permiso básico')
INSERT [dbo].[TipoPermisos] ([Id], [Descripcion]) VALUES (3, N'Permiso restringido')
SET IDENTITY_INSERT [dbo].[TipoPermisos] OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permisos', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Employee Forename' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permisos', @level2type=N'COLUMN',@level2name=N'NombreEmpleado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Employee Surname' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permisos', @level2type=N'COLUMN',@level2name=N'ApellidoEmpleado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Permission type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permisos', @level2type=N'COLUMN',@level2name=N'TipoPermiso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Permission granted on Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Permisos', @level2type=N'COLUMN',@level2name=N'FechaPermiso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoPermisos', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Permission description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TipoPermisos', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
USE [master]
GO
ALTER DATABASE [n5now] SET  READ_WRITE 
GO
