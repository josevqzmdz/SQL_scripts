--------2.- Crear el procedimiento almacenado que permita recibir como parámetro la clave del cliente y visualice
------ --todas las facturas que ya están pagadas es decir ya no tienen saldo.
 CREATE PROCEDURE SP_2
@cliente as varchar(20)


as
select*
from FACTURAS
where CLIENTE=@cliente and TOTAL=0;


execute SP_2 '6'