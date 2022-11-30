CREATE DATABASE Aerolineas
USE Aerolineas

--===============================================================
--==================Tabla DIRECCION==============================
--===============================================================

CREATE TABLE Direccion(
	direccionId int IDENTITY(1,1) NOT NULL,
	calle varchar(50) NOT NULL,
	numero varchar(10) NOT NULL,
	colonia varchar(50) NOT NULL,
	codigoPostal varchar(5) NOT NULL,
CONSTRAINT PK_Direccion PRIMARY KEY CLUSTERED(direccionId)
)

--===============================================================
--==================Tabla Arerolinea ============================
--===============================================================

CREATE TABLE Aerolinea(
	AerolineaId int IDENTITY(1,1) NOT NULL,
    -- Identity (1,1) inicia en 1 con incrementos de 1 Sirve para asignar el valor
	nacional bit NOT NULL,
	Nombre varchar(50) NOT NULL,
    direccionId int NOT NULL,
    telefono varchar(50) NOT NULL,
CONSTRAINT PK_Aerolinea PRIMARY KEY CLUSTERED(AerolineaId)
)

--===============================================================
--==================Tabla AVION =================================
--===============================================================


--Otra forma de crear una DB
CREATE TABLE [dbo].[Avion](
    [matricula][int] NOT NULL,
    [idTipoAvion][int] NOT NULL,
    [fechaFabricacion][datetime] NOT NULL,
    [UltimoMantenimiento][datetime] NOT NULL,
    [mesesMantenimiento][int] NOT NULL,
    [AerolineaId][int] NOT NULL,
CONSTRAINT [PK_Avion] PRIMARY KEY CLUSTERED(matricula)
)

--===============================================================
--==================Tabla CLIENTE================================
--===============================================================

CREATE TABLE Cliente(
	clienteId int IDENTITY(1,1) NOT NULL,
	personaId int NOT NULL,
	idTipoCliente int NOT NULL,
	fecharegistro datetime NOT NULL,
CONSTRAINT PK_Cliente PRIMARY KEY CLUSTERED (clienteId)
)




--SP_HELP Aerolinea (Info tabla)

--===============================================================
--==================Tabla EMPLEADO===============================
--===============================================================

CREATE TABLE Empleado(
	idEmpleado int IDENTITY(1,1) NOT NULL,
	idPersona int NOT NULL,
	idTipoEmpleado int NOT NULL,
	AerolineaId int NULL,
	fechaIngreso datetime,
	sueldo money NOT NULL,
	idJefe int NULL,
CONSTRAINT PK_Empleado PRIMARY KEY CLUSTERED(idEmpleado)
)

--===============================================================
--==================Tabla PERSONA================================
--===============================================================

CREATE TABLE Persona(
	idPersona int IDENTITY(1,1) NOT NULL,
	nombre varchar(50) NOT NULL,
	paterno varchar(50) NOT NULL,
	materno varchar(50) NULL,
	direccionId int NOT NULL,
	telefono varchar(50) NOT NULL,
	nacimiento datetime NOT NULL,
	sexo bit NOT NULL,
CONSTRAINT PK_Persona PRIMARY KEY CLUSTERED(idPersona)
)

--===============================================================
--==================Tabla TipoCliente============================
--===============================================================

CREATE TABLE TipoCliente(
	idTipoCliente int IDENTITY(1,1) NOT NULL,
	tipoCliente varchar(50) NOT NULL,
	descuento int NOT NULL,
CONSTRAINT PK_TipoCliente PRIMARY KEY CLUSTERED(idTipoCliente)
)

--===============================================================
--==================Tabla Vendedor===============================
--===============================================================

CREATE TABLE Vendedor(
	vendedorId int IDENTITY(1,1) NOT NULL,
	personaId int NOT NULL,
	fechaIngreso datetime NOT NULL,
	porcentajeComision int NOT NULL,
CONSTRAINT PK_Vendedor PRIMARY KEY CLUSTERED(vendedorId)
)

--===============================================================
--==================Tabla Venta==================================
--===============================================================

CREATE TABLE Venta(
	idVenta int IDENTITY(1,1) NOT NULL,
	idCliente int NOT NULL,
	fechaCompra datetime NOT NULL,
	numAsientos int NOT NULL,
	idVuelo int NOT NULL,
	idVendedor int NOT NULL,
CONSTRAINT PK_Venta PRIMARY KEY CLUSTERED(idVenta)
)

--===============================================================
--==================Tabla TipoAvion==============================
--===============================================================

CREATE TABLE TipoAvion(
	idTipoAvion int IDENTITY(1,1) NOT NULL,
	tipoAvion varchar(50) NOT NULL,
	fabricante varchar(50) NOT NULL,
	numAsientos int NOT NULL,
CONSTRAINT PK_TIpoAvion PRIMARY KEY CLUSTERED(idTipoAvion)
)
--===============================================================
--==================Tabla Vuelo==================================
--===============================================================

CREATE TABLE Vuelo(
	idVuelo int IDENTITY(1,1) NOT NULL,
	matriculaAvion int NOT NULL,
	precioPorAsiento money NOT NULL,
	fechaVuelo datetime NOT NULL,
CONSTRAINT PK_Vuelo PRIMARY KEY CLUSTERED(idVuelo)
)

--===============================================================
--==================Tabla VueloEmpleado==========================
--===============================================================

CREATE TABLE VueloEmpleado(
	idVuelo_Empleado int IDENTITY(1,1) NOT NULL,
	idVuelo int NOT NULL,
	idEmpleado int NOT NULL,
CONSTRAINT PK_VueloEmpleado PRIMARY KEY CLUSTERED(idVuelo_Empleado)
)

--===============================================================
--==================Tabla TipoEmpleado===========================
--===============================================================

CREATE TABLE TipoEmpleado(
	idTipoEmpleado int IDENTITY(1,1) NOT NULL,
	TipoEmpleado varchar(50) NOT NULL,
	sueldoMaximo money NOT NULL,
	esDeVuelo bit NOT NULL
CONSTRAINT PK_TipoEmpleado PRIMARY KEY CLUSTERED(idTipoEmpleado)
)


ALTER TABLE Avion WITH CHECK ADD CONSTRAINT FK_Avion_Aerolinea FOREIGN KEY(AerolineaId)
REFERENCES Aerolinea(AerolineaId)
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE Avion WITH CHECK ADD CONSTRAINT FK_Avion_TipoAvion FOREIGN KEY(idTipoAvion)
REFERENCES TipoAvion(idTipoAvion)
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE Cliente WITH CHECK ADD CONSTRAINT FK_Cliente_Persona FOREIGN KEY(personaId)
REFERENCES Persona(idPersona)
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE Cliente WITH CHECK ADD CONSTRAINT FK_Cliente_TipoCliente FOREIGN KEY(idTipoCliente)
REFERENCES TipoCliente(idTipoCliente)
ON DELETE CASCADE
ON UPDATE CASCADE
GO

--Persona

ALTER TABLE Persona WITH CHECK ADD CONSTRAINT FK_Persona_Direccion FOREIGN KEY(direccionId)
REFERENCES Direccion(direccionId)
ON DELETE CASCADE
ON UPDATE CASCADE
GO

--Vendedor
ALTER TABLE Vendedor WITH CHECK ADD CONSTRAINT FK_Vendedor_Persona FOREIGN KEY(personaId)
REFERENCES Persona(idPersona)
ON DELETE CASCADE
ON UPDATE CASCADE
GO

--Empleado
ALTER TABLE Empleado WITH CHECK ADD CONSTRAINT FK_Empleado_Persona FOREIGN KEY(idPersona)
REFERENCES Persona(idPersona)
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE Empleado WITH CHECK ADD CONSTRAINT FK_Empleado_TipoEmpleado FOREIGN KEY(idTipoEmpleado)
REFERENCES TipoEmpleado(idTipoEmpleado)
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE Empleado WITH CHECK ADD CONSTRAINT FK_Empleado_Aerolinea FOREIGN KEY(AerolineaId)
REFERENCES Aerolinea(AerolineaId)
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE Empleado WITH CHECK ADD CONSTRAINT FK_Empleado_Jefe FOREIGN KEY(idJefe)
REFERENCES Empleado(idEmpleado)
GO

--Vuelo Empleado
ALTER TABLE VueloEmpleado WITH CHECK ADD CONSTRAINT FK_VueloEmpleado_Vuelo FOREIGN KEY(idVuelo)
REFERENCES Vuelo(idVuelo)
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE VueloEmpleado WITH CHECK ADD CONSTRAINT FK_VueloEmpleado_Empleado FOREIGN KEY(idEmpleado)
REFERENCES Empleado(idEmpleado)
ON DELETE CASCADE
ON UPDATE CASCADE
GO

--Vuelo Falla
ALTER TABLE Vuelo ADD CONSTRAINT FK_Vuelo_Avion FOREIGN KEY(matriculaAvion)
REFERENCES Avion(matricula)

--Venta

ALTER TABLE Venta ADD CONSTRAINT FK_Venta_Vendedor FOREIGN KEY(idVendedor)
REFERENCES Vendedor (vendedorId)
ON DELETE CASCADE ON UPDATE CASCADE

ALTER TABLE Venta ADD CONSTRAINT FK_Venta_Vuelo FOREIGN KEY(idVuelo)
REFERENCES Vuelo(idVuelo)
ON DELETE CASCADE ON UPDATE CASCADE

--Fallo
ALTER TABLE Venta ADD CONSTRAINT FK_Venta_Cliente FOREIGN KEY(idCliente)
REFERENCES Cliente(clienteId)


--Aerolinea
ALTER TABLE Aerolinea ADD CONSTRAINT FK_Aerolinea_Direccion FOREIGN KEY(direccionId)
REFERENCES Direccion(direccionId)

SP_HELP(Aerolinea)

--Ver las tablas creadas
SELECT * FROM SYS.OBJECTS WHERE TYPE = 'F'