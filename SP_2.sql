--------2.- Crear el procedimiento almacenado que permita recibir como par�metro la clave del cliente y visualice
------ --todas las facturas que ya est�n pagadas es decir ya no tienen saldo.
 CREATE PROCEDURE SP_2
@cliente as varchar(20)


as
select*
from FACTURAS
where CLIENTE=@cliente and TOTAL=0;


execute SP_2 '6'