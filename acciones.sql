--Para ver las tablas
SELECT * FROM SYS.objects where type = 'u'

SP_help persona

--Cambiar el tipo de dato de una tabla
ALTER TABLE Direccion ALTER COLUMN numero INT


--Para eliminar registros de una tabla
DELETE FROM nombre_tabla WHRE condicion

--Para borrar una tabla
DROP TABLE nombre_tabla

--Todos los registros 
SELECT * FROM nombre_tabla

--Obtener los primeros 10 registro sde una tabla
SELECT TOP 10 * from nombre_tabla

--Operador de seleccion
SELECT camp1, camp2, camp3 FROM nombre_tabla


--La instruccion where \
select matricula, idTipoAvion, aerolineaId from Avion
where idTipoAvion>=3


--Registros que cumplan con una lista de condiciones
select * from Avion
where idTipoAvion in ('7','1','8')


-- Para renombrar un atributo Palabra AS, pero solo para vizualizacion
SELECT nombre, paterno, materno as AP_MAT from Persona
SELECT nombre, paterno, materno as 'ap materno' from Persona


--Como tuilizar los alias con dos tablas
--Ejemplo del falso join
select * from Persona p, empleado e
where e.idEmpleado = p.IdePersona

--Instruccion between
SELECT * FROM persona WHERE idPersona BETWEEN 5 and 10


-- Operadores <,>,=,<>,!=,,>=,<=
-- Indtruccion LIKE
SELECT nombre, paterno, materno FROM persona where nombre LIKE 'Edg%'
SELECT nombre, paterno, materno FROM persona where Nombre LIKE '%Ed'
SELECT nombre, paterno, materno FROM Persona WHERE nombre LIKE '%Ed%'


-- Para obtener los valores unicos dentro de una columna (elimina repetidos)
-- Solo puede ser usado por una columna a la vez
SELECT DISTINCT(campo) FROM nombre_tabla
select distinct (materno) from persona


-- se ordena los registros de acuerdo al orden en que aparecen los campos
SELECT * FROM persona order by paterno, materno, nombre


-- Ordenar de manera descendente por el primer campo y de manera ascendente
SELECT * FROM Persona order by Paterno desc, Materno asc
SELECT * FROM Persona ORDER BY 3,4,5


-- Para actulizar un registro
UPDATE nom_tabla SET campo_Actualizar = 'valor_actulizar' where llave_primaria = ''
UPDATE Persona SET nombre = 'Yesica' WHERE idPersona = 20

-- Para insertar todos los valores de una tabla
INSERT INTO nombre_tabla VALUES ('','','')

-- Para insertar algunos valor de una tabla
INSERT INTO nombre_tabla (campo1,campo2,capo3) VALUES ('valor1','valor 2')

SELECT PATERNO + ' ' + MATERNO + ' ' + NOMBRE FROM PERSONA




-- Generar una lista con los nombres completos de las chicas que viven en canela
SELECT PATERNO + ' ' + ISNULL(materno,'') + ' ' + NOMBRE FROM Persona WHERE (direccionId = 15 and sexo=1)

SELECT PATERNO + ' ' + ISNULL(materno,'') + ' ' + NOMBRE FROM Persona p, Direccion d 
WHERE d.calle = 'Río Amazonas' and p.direccionId=d.direccionId

--Convertir tipo de datos o casteo
SELECT CAST(123.56 AS INT)

--Convertir tipos de datos entre si
SELECT CONVERT(date,getdate())
SELECT CONVERT(INT, 123.56)

--fecha actgual
SELECT GETDATE()

--Declaracion de variables
DECLARE @@var1 VARCHAR(4)
SET @@var1 = 'HOLA'

DECLARE @@var2=CONVERT(NVARCHAR(4),@@var1)
SET @@var2 = CONVERT(NVARCHAR(4),@@var1)

--VARCHAR solo recibe alfanumericos a-z y 0-9
--VARCHAR recibe cualquier tipo de caractaer

-- Guardar una colsulra
DECLARE @@nombre1 NVARCHAR(15)
SELECT @@nombre1 = Nombre FROM Persona WHERE idPersona = '5'
SELECT @@nombre1 as 'Nueva Variable'


-- cOMO QUITAR ESPACIOS A UNA CADENA DE TEXTO
select '*' + LTRIM('    Cadena de Texto') + '*'
SELECT '*' + RTRIM('    Cadena de Textp   ') + '*'
SELECT RIGHT ('Las placas del vehivculo son 123WCF',6)

SELECT * FROM empleado
SELECT * FROM PERSONA

-- Parametro sde una fecha 
SELECT MONTH(GETDATE())
SELECT DAY(GETDATE())
SELECT YEAR(GETDATE())

--LISTAR a todos los empleados que su fecha de ingreso sea dle 2010 para atras
--Falso join
SELECT idEmpleado, Nombre,fechaIngreso From Persona p, empleado e
where p.idPersona = e.idPersona and YEAR(e.fechaIngreso)<=2010

--Join
SELECT idEmpleado, Nombre, fechaIngreso 
from persona join empleado
on Persona.idPersona=empleado.idPersona
where year(fechaIngreso)<=2010


-- SELECCIONAR TODOS LOS CLIENTES HOMBRES QUE SE REGITRARON entre enero y septiembre del 2014
SELECT NOMBRE + ' ' + PATERNO + ' ' + ISNULL(materno,''),sexo FROM Persona where sexo = 0

SELECT persona.nombre + ' ' + paterno + ' ' + ISNULL(materno,''), persona.sexo
from persona join Cliente
on persona.idPersona = Cliente.personaId
where sexo=0 and month(fechaRegistro) BETWEEN 1 and 8


--Uso de la instruccion EXISTS devuelve kun tipo booleano (FALSO/VERDADER)
--select * from Persona
SELECT p.Nombre, p.Paterno
FROM Persona AS p
WHERE EXISTS
(select *
    FROM Empleado AS e
    WHERE p.idPersona = e.IdePersona
    AND p.paterno = 'Lara'
)

INSERT Persona (nombre,paterno,materno,direccionId,telefono,nacimiento,sexo) VALUES (N'Gabriela',N'Lara',N'Segoviano',2,N'5564298736',CAST(N'1992-08-13T00:00:00.000'AS DateTime),1)

--INSERTAMOS EL PUESTO DIRECTOR DE OPERACIONES en tipo empleado
SELECT * FROM TipoEmpleado


SET IDENTITY_INSERT TipoEmpleado ON 
    INSERT TipoEmpleado (idTipoEmpleado, tipoEmpleado, sueldoMaximo, esDeVuelo) VALUES (2, N'Director de operaciones', 65000.000,0)
SET IDENTITY_INSERT TipoEmpleado OFF

INSERT PERSONA (nombre, paterno, materno, direccionId,telefono,nacimiento,sexo) VALUES (N'EmilianO',N'Chacon',N'Tabouda',17,N'556427896542',CAST(N'1990-08-13T00:00:00.000'AS DateTime),0)

-- Insertamos a emilianO a la tabla de empleados
SET IDENTITY_INSERT Empleado ON
    INSERT Empleado(idPersona,idEmpleado,idTipoEmpleado,AerolineaId,fechaIngreso,sueldo,idJefe)
    VALUES (26,7,2,5,CAST(N'2000-08-13T00:00:00.000'AS DateTime),60000.0000,NULL)
SET IDENTITY_INSERT Empleado OFF


-- iNSERTAMOS A GABRIELA EN LA TABLA EMPLEADOS
    SET IDENTITY_INSERT Empleado ON
        INSERT Empleado(idPersona,idEmpleado,idTipoEmpleado,AerolineaId,fechaIngreso,sueldo,idJefe)
        VALUES (25,11,5,5,CAST(N'2005-08-13T00:00:00.000'AS DateTime),49658.0000,7)
    SET IDENTITY_INSERT Empleado OFF

-- dateadd()
-- agrega un valor a una fecha indicada
select idPersona,nombre,nacimiento, dateadd(dd,7,nacimiento) as 'Nueva fechar'
from persona


--DATEDIFF()
-- Devuelve el numero de unidades departe de la fecha entre la fecha inicial y la final
SELECT matricula, idTipoAvion,fechaFabricacion,
DATEDIFF(dd,fechaFabricacion,GETDATE()) as
'TIEMPO DE VIDA' From Avion


-- DATENAME()
-- Devuel la fecha con algun formate
SELECT NOMBRE, nacimiento, DATENAME(dw,nacimiento) as 'Parte de fecha' FROM Persona
SELECT NOMBRE, nacimiento, DATENAME(dd,nacimiento) as 'Parte de fecha' FROM Persona