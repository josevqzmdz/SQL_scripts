SELECT *
FROM FACTURAS
WHERE FOLIO = '150' OR FOLIO = '160' OR FOLIO = '1230'

SELECT *
FROM FACTURAS
WHERE FOLIO >= '1600' AND FOLIO <= '2800'

SELECT *
FROM FACTURAS
WHERE FOLIO BETWEEN '1600' AND '2000'