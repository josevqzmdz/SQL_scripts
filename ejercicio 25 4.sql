alter procedure Rep_facturas(--- este es un procedimiento almacenado 
/* es una funcion con parametros que se mandan por el usuario */
@fecha_ini datetime, /*los parametros en los procedimientos almacenados se escriben
despues del signo de arroba @
y le sigue su tipo de dato (tipo de dato date time)*/
@fecha_fin datetime)
/* se crea el procedimiento de la consulta */
as
declare @total_final money
select @total_final=sum(SUBTOTAL)
/* subtotal es un campo de la base de datos */
from FACTURAS
where Fecha between @fecha_ini and @fecha_fin

Create table #Tempo_BVD
---esta es una tabla temporal con el gato #
---con los siguientes parametros
(Tipo int,
nMes int,
mes varchar(30),
Total money
)
insert into #Tempo_BVD
select 1,month(FECHA),'',sum(SUBTOTAL)
---
from FACTURAS
where Fecha between @fecha_ini and @fecha_fin
group by Fecha

Insert into #Tempo_BVD
values(2,0,'total rango',@total_final)

Update #Tempo_BVD set mes='Enero' where nmes=1
Update #Tempo_BVD set mes='Febrero' where nmes=2
Update #Tempo_BVD set mes='Marzo' where nmes=3
Update #Tempo_BVD set mes='Abril' where nmes=4
Update #Tempo_BVD set mes='Mayo' where nmes=5
Update #Tempo_BVD set mes='Junio' where nmes=6
Update #Tempo_BVD set mes='Julio' where nmes=7
Update #Tempo_BVD set mes='Agosto' where nmes=8
Update #Tempo_BVD set mes='Septiembre' where nmes=9
Update #Tempo_BVD set mes='Octubre' where nmes=10
Update #Tempo_BVD set mes='Noviembre' where nmes=11
Update #Tempo_BVD set mes='Diciembre' where nmes=12

select mes,sum(total)
From #Tempo_BVD
Group by mes, Tipo
Order by Tipo


alter procedure Brandon2(
@fecha_ini datetime,
@fecha_fin datetime)
as
declare @total_final money
select @total_final=sum(SUBTOTAL)
from FACTURAS
where Fecha between @fecha_ini and @fecha_fin

Select 1,f.month(FECHA),'',f.sum(SUBTOTAL)
into #Tempo_BVD
from FACTURAS as f
where FECHA between @fecha_ini and @fecha_fin
group by Fecha

Insert into #Tempo_BVD
values(2,0,'total rango',@total_final)

Update #Tempo_BVD set mes='Enero' where nmes=1
Update #Tempo_BVD set mes='Febrero' where nmes=2
Update #Tempo_BVD set mes='Marzo' where nmes=3
Update #Tempo_BVD set mes='Abril' where nmes=4
Update #Tempo_BVD set mes='Mayo' where nmes=5
Update #Tempo_BVD set mes='Junio' where nmes=6
Update #Tempo_BVD set mes='Julio' where nmes=7
Update #Tempo_BVD set mes='Agosto' where nmes=8
Update #Tempo_BVD set mes='Septiembre' where nmes=9
Update #Tempo_BVD set mes='Octubre' where nmes=10
Update #Tempo_BVD set mes='Noviembre' where nmes=11
Update #Tempo_BVD set mes='Diciembre' where nmes=12

select mes,sum(total)
From #Tempo_BVD
Group by mes, Tipo
Order by Tipo
