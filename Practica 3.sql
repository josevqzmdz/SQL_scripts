SELECT *
FROM CLIENTES
WHERE RFC LIKE '%8%'

SELECT CONTRIBUYENTE
FROM CLIENTES
WHERE CONTRIBUYENTE LIKE '%8%'

SELECT CONTRIBUYENTE, FECHA
FROM FACTURAS, CLIENTE
WHERE YEAR(FECHA) = '2011'

SELECT TOTAL, FECHA
FROM FACTURAS
WHERE YEAR(FECHA) BETWEEN '2011' AND '2012'

SELECT DESCRIPCION, PRECIO
FROM FACTURAS, DETFAC
WHERE YEAR(FECHA) = '2011'

SELECT C.CONTRIBUYENTE, C.RFC
FROM FACTURAS AS A, DETFAC AS B, CLIENTES AS C
WHERE ARTICULO LIKE '%HON%'