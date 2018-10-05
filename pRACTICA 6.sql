From Articulos, DetFac
Where Articulos.articulo = detfac.articulo

ALIAS

Select.a.precio.a.unidad, b.folio, b.cantidad, b.descripcio Endetalle, a.descripcion EnCatalogo
From Articulos as A, DetFac as B
Where a.articulo = b.articulo

SELECT A.CONTRIBUYENTE, B.FOLIO, B.SUBTOTAL, B.TOTAL
FROM CLIENTES as A, FACTURAS as B
WHERE B.FECHA >= '20110505' AND B.FECHA <= '20120610' AND B.RFC = 'SLA91022146A' AND A.RFC = B.RFC

SELECT *
FROM CLIENTES
WHERE CIUDAD = 'MEXICALI'

SELECT RFC, COLONIA
FROM CLIENTES
WHERE CP = '21000' OR CP = '21200'	