USE [master]
GO
CREATE DATABASE [BDEmpresa]
GO
ALTER DATABASE [BDEmpresa] SET  READ_WRITE 
GO
USE [BDEmpresa]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[NombreCliente] [varchar](150) NULL,
	[FotoCliente] [varchar](200) NULL,
	[FechaUltimaCompra] [date] NULL,
	[IdProvincia] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[IdEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[NombreEmpleado] [varchar](150) NULL,
	[FotoEmpleado] [varchar](200) NULL,
	[IdSector] [int] NULL,
	[AntiguedadEmpleado] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localidades](
	[IdLocalidad] [int] IDENTITY(1,1) NOT NULL,
	[NombreLocalidad] [varchar](50) NULL,
	[CodigoPostal] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincias](
	[IdProvincia] [int] IDENTITY(1,1) NOT NULL,
	[NombreProvincia] [varchar](50) NULL,
	[Pais] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sectores](
	[IdSector] [int] IDENTITY(1,1) NOT NULL,
	[NombreSector] [varchar](50) NULL,
	[Ubicacion] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sucursales](
	[IdSucursal] [int] IDENTITY(1,1) NOT NULL,
	[NombreSucursal] [varchar](50) NULL,
	[IdLocalidad] [int] NULL,
	[FechaApertura] [date] NULL
) ON [PRIMARY]
GO

INSERT INTO Provincias 
VALUES ('Buenos Aires', 'Argentina');
INSERT INTO Provincias
VALUES ('Catamarca', 'Argentina');
INSERT INTO Provincias
VALUES ('Chaco', 'Argentina');
INSERT INTO Provincias
VALUES ('Chubut', 'Argentina');
INSERT INTO Provincias
VALUES ('Córdoba', 'Argentina');
INSERT INTO Provincias
VALUES ('Corrientes', 'Argentina');
INSERT INTO Provincias
VALUES ('Entre Ríos', 'Argentina');

INSERT INTO Sectores
VALUES ('Ventas', 'Planta Baja')
INSERT INTO Sectores
VALUES ('Producción', 'Planta Baja')
INSERT INTO Sectores
VALUES ('Administración', 'Planta Baja')
INSERT INTO Sectores
VALUES ('Stock y Pedidos', 'Planta Alta')

INSERT INTO Localidades
VALUES ('Villa Crespo', 1414)
INSERT INTO Localidades
VALUES ('Villa Urquiza', 1450)
INSERT INTO Localidades
VALUES ('Villa Devoto', 1460)
INSERT INTO Localidades
VALUES ('Villa Luro', 1470)
INSERT INTO Localidades
VALUES ('Villa Ortúzar', 1492)
INSERT INTO Localidades
VALUES ('Villa Pueyrredón', 1433)