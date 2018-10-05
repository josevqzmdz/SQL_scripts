/* 
	Examen de base de datos
	PARTE 1
	por Jose Miguel Vazquez Mendez
	2153330176
	bases de datos 9-10am 

	Esta practica utiliza el archivo .bak 
	especial de la clase
 */

 /* se utiliza la base de datos  FACELECF de la maestra*/

 /*
 1.- Crear la base de datos Examen INICIALES  ejemplo   ExamenOLML
 */

 /*
 CREATE DATABASE ExamenJMVM
 */

 USE ExamenJMVM

 /*
 2.- Crear las tablas 
	a) Clientes, 
	b) Facturas, 
	c) DetFac, 
	d) Datoselectronica, 
	e) Articulos.  
 
 A partir de una consulta tomando la información de la base de datos  que se dio para restaurar.
 */

 
 USE ExamenJMVM
---a) 

SELECT *

	INTO CLIENTES 
	/*
	con INTO, SQL crea la tabla directamente y 
	asi puedes introducir datos mas rapidamente
	*/
	FROM FACELECF.dbo.CLIENTES

---b)
SELECT *
	INTO FACTURAS 
	/*
	con INTO, SQL crea la tabla directamente y 
	asi puedes introducir datos mas rapidamente
	*/
	FROM FACELECF.dbo.FACTURAS

---c)
SELECT *
	INTO DETFAC
	FROM FACELECF.DBO.FACTURAS

---d)
SELECT *
	INTO DATOSELECTRONICA
	FROM FACELECF.DBO.FACTURAS

---e) 
 SELECT *
	INTO ARTICULOS
	FROM FACELECF.DBO.FACTURAS	   

 
 /*
	3.-Realice la consulta que nos muestre todos los clientes
	 que son de rfc genérico ‘XXXX010101XXX’
*/
SELECT *
	FROM CLIENTES
	WHERE RFC = 'XXXX010101XXX';
	/*aqui si se utiliza el punto y coma*/

 /*
	4.-Realice la consulta que nos muestre todos 
	los clientes que contengan la palabra ASESORIA
*/
 
SELECT CONTRIBUYENTE
FROM CLIENTES
	WHERE CONTRIBUYENTE LIKE '%ASESORIA&';

/*
5.- Realice la consulta que nos muestre todos los clientes
 que sean del estado B.C.
*/

 SELECT CONTRIBUYENTE
 FROM CLIENTES
	WHERE CONTRIBUYENTE LIKE '%ASESORIA&';

/*
	6.- Realice la consulta que nos muestre los 
	clientes que son de la colonia los pinos
*/

SELECT CONTRIBUYENTE, COLONIA
FROM CLIENTES
	WHERE COLONIA = 'los pinos'

/*
	7.- Realice la consulta que nos muestre los
	productos que tengan precios menores a 500
*/

SELECT ARTICULO, PRECIO
FROM FACELECF.DBO.ARTICULOS
WHERE PRECIO < 500;
	/* 
	Las comparaciones tambien se cierran con punto y coma
	*/

/*
8.- Realice la consulta que nos muestre 
los productos que tengan precio entre 500 y 900
*/

SELECT ARTICULO, PRECIO
FROM FACELECF.DBO.ARTICULOS
	WHERE PRECIO BETWEEN 500 AND 900;

/*
9.- Realice la consulta que nos permita 
mostrar los productos que sean nulos en su unidad.
*/

SELECT ARTICULO
FROM FACELECF.DBO.ARTICULOS
WHERE UNIDAD = '';

/*
10.-Realice la consulta que nos permita mostrar los productos
 que son servicios en la unidad se especifica que tipo son.
*/

SELECT ARTICULO, UNIDAD
FROM FACELECF.DBO.ARTICULOS
WHERE UNIDAD = 'serv'

/*
11.- Realice la consulta que nos permita mostrar los productos
que en su descripción empieza con Finiquito.
*/

SELECT ARTICULO, DESCRIPCION
FROM FACELECF.DBO.ARTICULOS
WHERE DESCRIPCION LIKE 'Finiquito'

/*
12.- Realice la consulta que nos permita mostrar 
los productos que en su descripción lleve la palabra FISCAL.
*/

SELECT ARTICULO, DESCRIPCION
FROM FACELECF.DBO.ARTICULOS
WHERE DESCRIPCION LIKE 'FISCAL'

/*
13.- Realice la consulta que nos permita mostrar
 todas las facturas del año 2010.
*/

SELECT *
FROM FACELECF.DBO.FACTURAS
WHERE FECHA LIKE '%2010';


/*
14.-Realice la consulta que nos permita mostrar
todas las facturas del año 2011 y del mes de Marzo.
*/

---CONSULTA DEL 2011
SELECT *
FROM FACELECF.DBO.FACTURAS
WHERE FECHA LIKE '%2011'

---CONSULTA DEL MES DE MARZO
SELECT *
FROM FACELECF.DBO.FACTURAS
WHERE YEAR(FECHA)=2011 AND MONTH(FECHA)=03;


/*
15.- Realice la consulta que nos permita mostrar
 todas las facturas de ingreso por ASESORIA
*/

SELECT FOLIO, INGRESOPOR
FROM FACELECF.DBO.FACTURAS
WHERE INGRESOPOR LIKE '%VENTA%';

/*
16.- Realice la consulta que nos permita mostrar 
todas las facturas de importe total menores a 5000
*/

SELECT * 
FROM FACELECF.DBO.FACTURAS
WHERE TOTAL < 5000

/*
17.- Realice la consulta que nos permita mostrar 
todas las facturas de importes mayores a 6000
*/

SELECT * 
FROM FACELECF.DBO.FACTURAS
WHERE TOTAL < 6000

/*
18.-Realice la consulta que nos permita mostrar
 el detalle de las facturas con folio 50, 80, 90
*/

SELECT *
FROM FACELECF.DBO.FACTURAS
WHERE FOLIO IN (50, 80, 90)


/*
19.-Realice la consulta que nos permita mostrar 
los folios de las facturas que contienen ASESORIA FISCAL.
*/

SELECT folio
FROM FACELECF.DBO.FACTURAS
WHERE INGRESOPOR LIKE '%asesoria fiscal%';


/*
20.-Realice la consulta que nos permita mostrar
todos los folios, y artículos facturados como unidad de PZ.
*/
SELECT FOLIO,ARTICULO,UNIDAD
from FACELECF.DBO.DETFAC
where UNIDAD='PZ';