USE Aerolineas23

--COMO BORRAR REGISTROS D EUNA TABLA
DELETE FROM Direccion WHERE Iddireccion IN ('1','2','3')
--delete from Direccion where direccionId<1000
--DBCC CHECKIDENT('Direccion', RESEED,0)
--SELECT * FROM Direccion

--delete from Persona where idPersona<1000
DBCC CHECKIDENT('Persona', RESEED,0)
--SELECT * FROM Persona

INSERT Direccion (calle, numero, colonia, codigoPostal) VALUES (N'Canela', N'123', N'Granjas', N'08400')
INSERT Direccion (calle, numero, colonia, codigoPostal) VALUES (N'Insurgentes Centro', N'765', N'San Rafael', N'06470')
INSERT Direccion (calle, numero, colonia, codigoPostal) VALUES (N'Av. H. Escuela Naval Militar', N'83', N'Presidentes Ejidales', N'04470')
INSERT Direccion (calle, numero, colonia, codigoPostal) VALUES (N'Río Atoyac', N'12', N'Cuauhtémoc ', N'06500')
INSERT Direccion (calle, numero, colonia, codigoPostal) VALUES (N'Lieja ', N'3', N'Juárez', N'06600')
INSERT Direccion (calle, numero, colonia, codigoPostal) VALUES (N'Alfonso Reyes', N'30', N'Hipódromo Condesa', N'06140')
INSERT Direccion (calle, numero, colonia, codigoPostal) VALUES (N'Av. 20 de Noviembre', N'2', N'Centro', N'06060')
INSERT Direccion (calle, numero, colonia, codigoPostal) VALUES (N'Río Amazonas', N'456', N'Cuauhtémoc', N'06500')
INSERT Direccion (calle, numero, colonia, codigoPostal) VALUES (N'Zempoaltecas', N's/n', N'Exhacienda el Rosario', N'02420')
INSERT Direccion (calle, numero, colonia, codigoPostal) VALUES (N'Serapio Rendón', N'4', N'San Rafael', N'06470')
INSERT Direccion (calle, numero, colonia, codigoPostal) VALUES (N'Arcos de Belén', N'345', N'Centro', N'06010')
INSERT Direccion (calle, numero, colonia, codigoPostal) VALUES (N'Av. Paseo de la Reforma', N'124', N'Juárez', N'06600')
INSERT Direccion (calle, numero, colonia, codigoPostal) VALUES (N'Río Tigris', N'45', N'Cuauhtémoc', N'06500')
INSERT Direccion (calle, numero, colonia, codigoPostal) VALUES (N'Paseo de la Reforma', N'23', N'Bosque de Chapultepec', N'11560')
INSERT Direccion (calle, numero, colonia, codigoPostal) VALUES (N'Montes Urales', N'83', N'Lomas Virreyes ', N'11000')
INSERT Direccion (calle, numero, colonia, codigoPostal) VALUES (N'Insurgentes Sur', N'234', N'Nochebuena', N'03720')
INSERT Direccion (calle, numero, colonia, codigoPostal) VALUES (N'Álvaro Obregón', N'34', N'Roma', N'06700')
INSERT Direccion (calle, numero, colonia, codigoPostal) VALUES (N'Av. Congreso de la Unión', N'123', N'El Parque', N'15960')
INSERT Direccion (calle, numero, colonia, codigoPostal) VALUES (N'Luis Moya', N'12', N'Centro', N'06070')
INSERT Direccion (calle, numero, colonia, codigoPostal) VALUES (N'Blvd. Miguel de Cervantes Saavedra', N'384', N'Ampliación Granada', N'11529')

--SELECT * FROM PERSONA
INSERT Persona (nombre, paterno, materno, direccionId, telefono, nacimiento, sexo) VALUES (N'Edgardo', N'Hernández', N'Madrigal', 2, N'5561283734', CAST(N'1980-08-30T00:00:00.000' AS DateTime), 0)
INSERT Persona (nombre, paterno, materno, direccionId, telefono, nacimiento, sexo) VALUES (N'Edith', N'Parez', N'Granados', 6, N'23432321', CAST(N'1959-03-04T00:00:00.000' AS DateTime), 1)
INSERT Persona (nombre, paterno, materno, direccionId, telefono, nacimiento, sexo) VALUES (N'Javier', N'Jimenez', N'Jiménez', 7, N'54324231', CAST(N'1962-09-03T00:00:00.000' AS DateTime), 0)
INSERT Persona (nombre, paterno, materno, direccionId, telefono, nacimiento, sexo) VALUES (N'Eduardo', N'Ortiz', NULL, 8, N'53123212231', CAST(N'1965-09-27T00:00:00.000' AS DateTime), 0)
INSERT Persona (nombre, paterno, materno, direccionId, telefono, nacimiento, sexo) VALUES (N'Efraín', N'Bautista', N'Beltran', 9, N'55231234', CAST(N'1978-09-02T00:00:00.000' AS DateTime), 0)
INSERT Persona (nombre, paterno, materno, direccionId, telefono, nacimiento, sexo) VALUES (N'Beatriz', N'Pedraza', N'López', 8, N'23123432', CAST(N'1967-02-25T00:00:00.000' AS DateTime), 1)
INSERT Persona (nombre, paterno, materno, direccionId, telefono, nacimiento, sexo) VALUES (N'Adrian', N'Lara', N'Parez', 10, N'56372823', CAST(N'1990-10-20T00:00:00.000' AS DateTime), 0)
INSERT Persona (nombre, paterno, materno, direccionId, telefono, nacimiento, sexo) VALUES (N'Eleonora', N'Solis', NULL, 9, N'57382462', CAST(N'1980-12-30T00:00:00.000' AS DateTime), 1)
INSERT Persona (nombre, paterno, materno, direccionId, telefono, nacimiento, sexo) VALUES (N'Marco', N'Ramirez', N'Ortiz', 11, N'53247845232', CAST(N'1987-02-09T00:00:00.000' AS DateTime), 0)
INSERT Persona (nombre, paterno, materno, direccionId, telefono, nacimiento, sexo) VALUES (N'Elisa', N'Romero', N'Ayala', 12, N'535221', CAST(N'1979-08-30T00:00:00.000' AS DateTime), 1)
INSERT Persona (nombre, paterno, materno, direccionId, telefono, nacimiento, sexo) VALUES (N'Elizabeth', N'Dueñas', N'Carmona', 13, N'53237894', CAST(N'1984-01-25T00:00:00.000' AS DateTime), 1)
INSERT Persona (nombre, paterno, materno, direccionId, telefono, nacimiento, sexo) VALUES (N'Eloisa', N'Guerra', NULL, 15, N'52347843', CAST(N'1982-09-10T00:00:00.000' AS DateTime), 1)
INSERT Persona (nombre, paterno, materno, direccionId, telefono, nacimiento, sexo) VALUES (N'Carlos', N'Tadeo', N'Almeida', 15, N'52346742', CAST(N'1980-10-17T00:00:00.000' AS DateTime), 0)
INSERT Persona (nombre, paterno, materno, direccionId, telefono, nacimiento, sexo) VALUES (N'Elsa', N'Fernández', N'Cabrera', 16, N'23413234', CAST(N'1986-08-30T00:00:00.000' AS DateTime), 1)
INSERT Persona (nombre, paterno, materno, direccionId, telefono, nacimiento, sexo) VALUES (N'Monica', N'Juárez', NULL, 17, N'591203', CAST(N'1979-12-09T00:00:00.000' AS DateTime), 1)
INSERT Persona (nombre, paterno, materno, direccionId, telefono, nacimiento, sexo) VALUES (N'Laura', N'Escobar', N'Campos', 18, N'52341678', CAST(N'1992-09-29T00:00:00.000' AS DateTime), 1)
INSERT Persona (nombre, paterno, materno, direccionId, telefono, nacimiento, sexo) VALUES (N'Martín', N'Carmona', N'Bautista', 19, N'23633162', CAST(N'1959-03-05T00:00:00.000' AS DateTime), 0)
INSERT Persona (nombre, paterno, materno, direccionId, telefono, nacimiento, sexo) VALUES (N'Nubia', N'García', NULL, 20, N'53679754', CAST(N'1982-12-30T00:00:00.000' AS DateTime), 1)
--no esta la direccion 22
--INSERT Persona (nombre, paterno, materno, direccionId, telefono, nacimiento, sexo) VALUES (N'Victor', N'Sandoval', N'Escudero', 21, N'53678234', CAST(N'1980-03-09T00:00:00.000' AS DateTime), 0)
--INSERT Persona (nombre, paterno, materno, direccionId, telefono, nacimiento, sexo) VALUES (N'Yuridia', N'Salazar', N'Figueroa', 22, N'23497543', CAST(N'1978-11-09T00:00:00.000' AS DateTime), 1)


--Para insertar con un id personalizado no incrementosa automaticos
SET IDENTITY_INSERT Vendedor ON 
INSERT Vendedor (vendedorId, personaId, fechaIngreso, porcentajeComision) VALUES (1, 1, CAST(N'2009-05-04T00:00:00.000' AS DateTime), 10)
INSERT Vendedor (vendedorId, personaId, fechaIngreso, porcentajeComision) VALUES (2, 3, CAST(N'2005-07-01T00:00:00.000' AS DateTime), 30)
INSERT Vendedor (vendedorId, personaId, fechaIngreso, porcentajeComision) VALUES (4, 11, CAST(N'2010-10-07T00:00:00.000' AS DateTime), 15)
SET IDENTITY_INSERT Vendedor OFF

INSERT TipoCliente (tipoCliente, descuento) VALUES (N'Nuevo', 0)
INSERT TipoCliente (tipoCliente, descuento) VALUES (N'Plata', 5)
INSERT TipoCliente (tipoCliente, descuento) VALUES (N'Oro', 10)

INSERT Cliente (personaId, idTipoCliente, fechaRegistro) VALUES (5, 1, CAST(N'2014-07-01T00:00:00.000' AS DateTime))
INSERT Cliente (personaId, idTipoCliente, fechaRegistro) VALUES (7, 1, CAST(N'2014-08-01T00:00:00.000' AS DateTime))
INSERT Cliente (personaId, idTipoCliente, fechaRegistro) VALUES (18, 1, CAST(N'2014-08-05T00:00:00.000' AS DateTime))
INSERT Cliente (personaId, idTipoCliente, fechaRegistro) VALUES (9, 2, CAST(N'2011-06-05T00:00:00.000' AS DateTime))
INSERT Cliente (personaId, idTipoCliente, fechaRegistro) VALUES (12, 2, CAST(N'2010-12-12T00:00:00.000' AS DateTime))
INSERT Cliente (personaId, idTipoCliente, fechaRegistro) VALUES (15, 2, CAST(N'2010-12-20T00:00:00.000' AS DateTime))
INSERT Cliente (personaId, idTipoCliente, fechaRegistro) VALUES (16, 2, CAST(N'2009-12-01T00:00:00.000' AS DateTime))
INSERT Cliente (personaId, idTipoCliente, fechaRegistro) VALUES (8, 3, CAST(N'2002-05-01T00:00:00.000' AS DateTime))
INSERT Cliente (personaId, idTipoCliente, fechaRegistro) VALUES (10, 3, CAST(N'2011-12-09T00:00:00.000' AS DateTime))
INSERT Cliente (personaId, idTipoCliente, fechaRegistro) VALUES (4, 3, CAST(N'2010-07-30T00:00:00.000' AS DateTime))
INSERT Cliente (personaId, idTipoCliente, fechaRegistro) VALUES (17, 3, CAST(N'2011-12-10T00:00:00.000' AS DateTime))
--INSERT Cliente (personaId, idTipoCliente, fechaRegistro) VALUES (19, 3, CAST(N'2010-01-01T00:00:00.000' AS DateTime))
INSERT Cliente (personaId, idTipoCliente, fechaRegistro) VALUES (14, 3, CAST(N'2008-01-01T00:00:00.000' AS DateTime))
INSERT Cliente (personaId, idTipoCliente, fechaRegistro) VALUES (2, 3, CAST(N'2010-02-03T00:00:00.000' AS DateTime))
INSERT Cliente (personaId, idTipoCliente, fechaRegistro) VALUES (6, 3, CAST(N'2010-02-03T00:00:00.000' AS DateTime))

--SELECT * FROM CLIENTE
INSERT TipoAvion (tipoAvion, fabricante, numAsientos) VALUES (N'Airbus A320neo', N'Airbus', 220)
INSERT TipoAvion (tipoAvion, fabricante, numAsientos) VALUES (N'A350 XWB', N'Airbus', 300)
INSERT TipoAvion (tipoAvion, fabricante, numAsientos) VALUES (N'Boeing 737 MAX 9', N'Boeing Commercial Airplanes ', 180)
INSERT TipoAvion (tipoAvion, fabricante, numAsientos) VALUES (N'Bombardier BD-500-1A10', N' Bombardier Aerospace', 100)
INSERT TipoAvion (tipoAvion, fabricante, numAsientos) VALUES (N'COMAC C919', N'COMAC', 190)
INSERT TipoAvion (tipoAvion, fabricante, numAsientos) VALUES (N'MRJ 90ER', N' Mitsubishi Aircraft Corporation', 96)
INSERT TipoAvion (tipoAvion, fabricante, numAsientos) VALUES (N'Tu-244', N'Túpolev', 269)
INSERT TipoAvion (tipoAvion, fabricante, numAsientos) VALUES (N'MS-21-200', N'United Aircraft Corporation ', 150)



SET IDENTITY_INSERT Aerolinea ON 
INSERT Aerolinea (AerolineaId, nacional, Nombre, direccionId, teléfono) VALUES (3, 1, N'Volaris', 2, N'55364738')
INSERT Aerolinea (AerolineaId, nacional, Nombre, direccionId,teléfono) VALUES (4, 1, N'InterJet', 3, N'56238493')
INSERT Aerolinea (AerolineaId, nacional, Nombre, direccionId,teléfono) VALUES (5, 0, N'American Airlines', 4, N'56738292')
SET IDENTITY_INSERT Aerolinea OFF


INSERT Avion (matricula,  idTipoAvion, fechaFabricacion, UltimoMantenimiento, mesesMantenimiento, aerolineaId) VALUES (234312, 4, CAST(N'2010-04-01T00:00:00.000' AS DateTime), CAST(N'2012-10-01T00:00:00.000' AS DateTime), 18, 3)
INSERT Avion (matricula,  idTipoAvion, fechaFabricacion, UltimoMantenimiento, mesesMantenimiento, aerolineaId) VALUES (234320, 6, CAST(N'2011-07-15T00:00:00.000' AS DateTime), CAST(N'2012-07-15T00:00:00.000' AS DateTime), 12, 3)
INSERT Avion (matricula,  idTipoAvion, fechaFabricacion, UltimoMantenimiento, mesesMantenimiento, aerolineaId) VALUES (234323, 1, CAST(N'2010-07-06T00:00:00.000' AS DateTime), CAST(N'2012-07-06T00:00:00.000' AS DateTime), 24, 3)
INSERT Avion (matricula,  idTipoAvion, fechaFabricacion, UltimoMantenimiento, mesesMantenimiento, aerolineaId) VALUES (432734, 3, CAST(N'2013-12-10T00:00:00.000' AS DateTime), CAST(N'2013-12-10T00:00:00.000' AS DateTime), 18, 4)
INSERT Avion (matricula,  idTipoAvion, fechaFabricacion, UltimoMantenimiento, mesesMantenimiento, aerolineaId) VALUES (432888, 3, CAST(N'2014-01-01T00:00:00.000' AS DateTime), CAST(N'2014-01-01T00:00:00.000' AS DateTime), 12, 4)
INSERT Avion (matricula,  idTipoAvion, fechaFabricacion, UltimoMantenimiento, mesesMantenimiento, aerolineaId) VALUES (437239, 2, CAST(N'2010-04-01T00:00:00.000' AS DateTime), CAST(N'2010-04-01T00:00:00.000' AS DateTime), 36, 4)
INSERT Avion (matricula,  idTipoAvion, fechaFabricacion, UltimoMantenimiento, mesesMantenimiento, aerolineaId) VALUES (734592, 8, CAST(N'2012-07-23T00:00:00.000' AS DateTime), CAST(N'2013-07-23T00:00:00.000' AS DateTime), 12, 5)
INSERT Avion (matricula,  idTipoAvion, fechaFabricacion, UltimoMantenimiento, mesesMantenimiento, aerolineaId) VALUES (738492, 7, CAST(N'2011-01-01T00:00:00.000' AS DateTime), CAST(N'2012-12-31T00:00:00.000' AS DateTime), 18, 5)
INSERT Avion (matricula,  idTipoAvion, fechaFabricacion, UltimoMantenimiento, mesesMantenimiento, aerolineaId) VALUES (738493, 5, CAST(N'2010-02-03T00:00:00.000' AS DateTime), CAST(N'2013-02-03T00:00:00.000' AS DateTime), 24, 5)


SET IDENTITY_INSERT Vuelo ON 
INSERT Vuelo (idVuelo, matriculaAvion, precioPorAsiento, fechaVuelo) VALUES (2, 234312, 3000.0000, CAST(N'2014-12-01T00:00:00.000' AS DateTime))
INSERT Vuelo (idVuelo, matriculaAvion, precioPorAsiento, fechaVuelo) VALUES (3, 234312, 6000.0000, CAST(N'2014-12-23T00:00:00.000' AS DateTime))
INSERT Vuelo (idVuelo, matriculaAvion, precioPorAsiento, fechaVuelo) VALUES (4, 234312, 3700.0000, CAST(N'2014-07-02T00:00:00.000' AS DateTime))
INSERT Vuelo (idVuelo, matriculaAvion, precioPorAsiento, fechaVuelo) VALUES (6, 234312, 2000.0000, CAST(N'2014-08-25T00:00:00.000' AS DateTime))
INSERT Vuelo (idVuelo, matriculaAvion, precioPorAsiento, fechaVuelo) VALUES (7, 234320, 3670.0000, CAST(N'2014-09-12T00:00:00.000' AS DateTime))
INSERT Vuelo (idVuelo, matriculaAvion, precioPorAsiento, fechaVuelo) VALUES (8, 234320, 2590.0000, CAST(N'2014-09-11T00:00:00.000' AS DateTime))
INSERT Vuelo (idVuelo, matriculaAvion, precioPorAsiento, fechaVuelo) VALUES (9, 234320, 6000.0000, CAST(N'2014-09-15T00:00:00.000' AS DateTime))
INSERT Vuelo (idVuelo, matriculaAvion, precioPorAsiento, fechaVuelo) VALUES (10, 234323, 2500.0000, CAST(N'2014-01-02T00:00:00.000' AS DateTime))
INSERT Vuelo (idVuelo, matriculaAvion, precioPorAsiento, fechaVuelo) VALUES (12, 234323, 3000.0000, CAST(N'2014-03-01T00:00:00.000' AS DateTime))
INSERT Vuelo (idVuelo, matriculaAvion, precioPorAsiento, fechaVuelo) VALUES (13, 432734, 5000.0000, CAST(N'2014-01-01T00:00:00.000' AS DateTime))
INSERT Vuelo (idVuelo, matriculaAvion, precioPorAsiento, fechaVuelo) VALUES (14, 432734, 4730.0000, CAST(N'2014-01-15T00:00:00.000' AS DateTime))
INSERT Vuelo (idVuelo, matriculaAvion, precioPorAsiento, fechaVuelo) VALUES (15, 432888, 4032.0000, CAST(N'2014-02-01T00:00:00.000' AS DateTime))
INSERT Vuelo (idVuelo, matriculaAvion, precioPorAsiento, fechaVuelo) VALUES (16, 738492, 2340.0000, CAST(N'2014-12-01T00:00:00.000' AS DateTime))
INSERT Vuelo (idVuelo, matriculaAvion, precioPorAsiento, fechaVuelo) VALUES (17, 738492, 7000.0000, CAST(N'2014-12-30T00:00:00.000' AS DateTime))
INSERT Vuelo (idVuelo, matriculaAvion, precioPorAsiento, fechaVuelo) VALUES (18, 738492, 7302.0000, CAST(N'2014-12-31T00:00:00.000' AS DateTime))
INSERT Vuelo (idVuelo, matriculaAvion, precioPorAsiento, fechaVuelo) VALUES (19, 734592, 6340.0000, CAST(N'2014-08-20T00:00:00.000' AS DateTime))
INSERT Vuelo (idVuelo, matriculaAvion, precioPorAsiento, fechaVuelo) VALUES (20, 734592, 1324.0000, CAST(N'2014-10-02T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT Vuelo OFF


SET IDENTITY_INSERT Venta ON 
INSERT Venta (idVenta, idCliente, fechaCompra, numAsientos, idVuelo, idVendedor) VALUES (1, 1, CAST(N'2014-07-01T00:00:00.000' AS DateTime), 2, 2, 1)
INSERT Venta (idVenta, idCliente, fechaCompra, numAsientos, idVuelo, idVendedor) VALUES (2, 1, CAST(N'2014-08-07T00:00:00.000' AS DateTime), 1, 7, 2)
INSERT Venta (idVenta, idCliente, fechaCompra, numAsientos, idVuelo, idVendedor) VALUES (3, 1, CAST(N'2014-05-07T00:00:00.000' AS DateTime), 4, 9, 2)
INSERT Venta (idVenta, idCliente, fechaCompra, numAsientos, idVuelo, idVendedor) VALUES (4, 2, CAST(N'2014-03-24T00:00:00.000' AS DateTime), 2, 2, 4)
INSERT Venta (idVenta, idCliente, fechaCompra, numAsientos, idVuelo, idVendedor) VALUES (6, 3, CAST(N'2014-02-26T00:00:00.000' AS DateTime), 1, 7, 4)
INSERT Venta (idVenta, idCliente, fechaCompra, numAsientos, idVuelo, idVendedor) VALUES (7, 3, CAST(N'2014-02-26T00:00:00.000' AS DateTime), 2, 10, 4)
INSERT Venta (idVenta, idCliente, fechaCompra, numAsientos, idVuelo, idVendedor) VALUES (8, 4, CAST(N'2014-01-01T00:00:00.000' AS DateTime), 4, 8, 2)
INSERT Venta (idVenta, idCliente, fechaCompra, numAsientos, idVuelo, idVendedor) VALUES (9, 4, CAST(N'2014-02-20T00:00:00.000' AS DateTime), 2, 9, 1)
INSERT Venta (idVenta, idCliente, fechaCompra, numAsientos, idVuelo, idVendedor) VALUES (11, 5, CAST(N'2014-12-23T00:00:00.000' AS DateTime), 1, 12, 1)
INSERT Venta (idVenta, idCliente, fechaCompra, numAsientos, idVuelo, idVendedor) VALUES (12, 6, CAST(N'2013-09-11T00:00:00.000' AS DateTime), 2, 14, 1)
INSERT Venta (idVenta, idCliente, fechaCompra, numAsientos, idVuelo, idVendedor) VALUES (13, 7, CAST(N'2014-08-30T00:00:00.000' AS DateTime), 4, 13, 1)
INSERT Venta (idVenta, idCliente, fechaCompra, numAsientos, idVuelo, idVendedor) VALUES (14, 8, CAST(N'2014-02-10T00:00:00.000' AS DateTime), 2, 15, 2)
INSERT Venta (idVenta, idCliente, fechaCompra, numAsientos, idVuelo, idVendedor) VALUES (15, 6, CAST(N'2014-03-02T00:00:00.000' AS DateTime), 2, 15, 1)
INSERT Venta (idVenta, idCliente, fechaCompra, numAsientos, idVuelo, idVendedor) VALUES (16, 9, CAST(N'2014-05-09T00:00:00.000' AS DateTime), 4, 15, 2)
INSERT Venta (idVenta, idCliente, fechaCompra, numAsientos, idVuelo, idVendedor) VALUES (17, 10, CAST(N'2014-08-30T00:00:00.000' AS DateTime), 4, 15, 2)
INSERT Venta (idVenta, idCliente, fechaCompra, numAsientos, idVuelo, idVendedor) VALUES (18, 10, CAST(N'2014-07-23T00:00:00.000' AS DateTime), 4, 12, 2)
INSERT Venta (idVenta, idCliente, fechaCompra, numAsientos, idVuelo, idVendedor) VALUES (19, 11, CAST(N'2014-01-01T00:00:00.000' AS DateTime), 4, 8, 1)
INSERT Venta (idVenta, idCliente, fechaCompra, numAsientos, idVuelo, idVendedor) VALUES (20, 12, CAST(N'2013-11-05T00:00:00.000' AS DateTime), 2, 8, 1)
INSERT Venta (idVenta, idCliente, fechaCompra, numAsientos, idVuelo, idVendedor) VALUES (21, 13, CAST(N'2014-09-02T00:00:00.000' AS DateTime), 3, 20, 4)
INSERT Venta (idVenta, idCliente, fechaCompra, numAsientos, idVuelo, idVendedor) VALUES (23, 13, CAST(N'2014-09-02T00:00:00.000' AS DateTime), 3, 19, 4)
INSERT Venta (idVenta, idCliente, fechaCompra, numAsientos, idVuelo, idVendedor) VALUES (24, 14, CAST(N'2013-01-01T00:00:00.000' AS DateTime), 5, 15, 1)
INSERT Venta (idVenta, idCliente, fechaCompra, numAsientos, idVuelo, idVendedor) VALUES (25, 14, CAST(N'2014-11-25T00:00:00.000' AS DateTime), 4, 8, 1)
INSERT Venta (idVenta, idCliente, fechaCompra, numAsientos, idVuelo, idVendedor) VALUES (26, 15, CAST(N'2014-12-31T00:00:00.000' AS DateTime), 3, 8, 1)
SET IDENTITY_INSERT Venta OFF



SET IDENTITY_INSERT TipoEmpleado ON 
INSERT TipoEmpleado (idTipoEmpleado, tipoEmpleado, sueldoMaximo, esDeVuelo) VALUES (1, N'Piloto', 40000.0000, 1)
INSERT TipoEmpleado (idTipoEmpleado, tipoEmpleado, sueldoMaximo, esDeVuelo) VALUES (3, N'Aeromosa', 15000.0000, 1)
INSERT TipoEmpleado (idTipoEmpleado, tipoEmpleado, sueldoMaximo, esDeVuelo) VALUES (5, N'Gerente', 50000.0000, 0)
SET IDENTITY_INSERT TipoEmpleado OFF


SET IDENTITY_INSERT Empleado ON 
--INSERT Empleado (idEmpleado, idPersona, idTipoEmpleado, AerolineaId, fechaIngreso, sueldo, idJefe) VALUES (1, 4, 1, 3, CAST(N'2010-07-30T00:00:00.000' AS DateTime), 47500.0000, 5)
--INSERT Empleado (idEmpleado, idPersona, idTipoEmpleado, AerolineaId, fechaIngreso, sueldo, idJefe) VALUES (2, 17, 1, 4, CAST(N'2011-12-10T00:00:00.000' AS DateTime), 39050.0000, 6)
--INSERT Empleado (idEmpleado, idPersona, idTipoEmpleado, AerolineaId, fechaIngreso, sueldo, idJefe) VALUES (3, 19, 1, 5, CAST(N'2010-01-01T00:00:00.000' AS DateTime), 40000.0000, 7)
INSERT Empleado (idEmpleado, idPersona, idTipoEmpleado, AerolineaId, fechaIngreso, sueldo, idJefe) VALUES (5, 13, 5, 3, CAST(N'2008-09-07T00:00:00.000' AS DateTime), 45700.0000, NULL)
INSERT Empleado (idEmpleado, idPersona, idTipoEmpleado, AerolineaId, fechaIngreso, sueldo, idJefe) VALUES (6, 14, 5, 4, CAST(N'2008-01-01T00:00:00.000' AS DateTime), 49200.0000, NULL)
--INSERT Empleado (idEmpleado, idPersona, idTipoEmpleado, AerolineaId, fechaIngreso, sueldo, idJefe) VALUES (7, 20, 5, 5, CAST(N'2005-11-15T00:00:00.000' AS DateTime), 45900.0000, NULL)
INSERT Empleado (idEmpleado, idPersona, idTipoEmpleado, AerolineaId, fechaIngreso, sueldo, idJefe) VALUES (9, 2, 3, 3, CAST(N'2010-02-03T00:00:00.000' AS DateTime), 17000.0000, 5)
INSERT Empleado (idEmpleado, idPersona, idTipoEmpleado, AerolineaId, fechaIngreso, sueldo, idJefe) VALUES (10, 6, 3, 3, CAST(N'2010-02-03T00:00:00.000' AS DateTime), 14700.0000, 5)
SET IDENTITY_INSERT Empleado OFF


SET IDENTITY_INSERT VueloEmpleado ON 
--INSERT VueloEmpleado (idVuelo_Empleado, idVuelo, idEmpleado) VALUES (1, 2, 1)
INSERT VueloEmpleado (idVuelo_Empleado, idVuelo, idEmpleado) VALUES (3, 2, 5)
INSERT VueloEmpleado (idVuelo_Empleado, idVuelo, idEmpleado) VALUES (4, 2, 9)
--INSERT VueloEmpleado (idVuelo_Empleado, idVuelo, idEmpleado) VALUES (5, 3, 1)
INSERT VueloEmpleado (idVuelo_Empleado, idVuelo, idEmpleado) VALUES (7, 3, 5)
INSERT VueloEmpleado (idVuelo_Empleado, idVuelo, idEmpleado) VALUES (8, 3, 10)
--INSERT VueloEmpleado (idVuelo_Empleado, idVuelo, idEmpleado) VALUES (9, 15, 2)
INSERT VueloEmpleado (idVuelo_Empleado, idVuelo, idEmpleado) VALUES (10, 15, 6)
SET IDENTITY_INSERT VueloEmpleado OFF

--Primeros 5
select top 5 * from persona