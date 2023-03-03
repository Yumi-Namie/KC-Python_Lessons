/*

 Keepcoding. Sentencia SQL del informe

Requerimiento:
Consulta SQL para sacar el siguiente listado de coches activos que hay en KeepCoding:
-Nombre modelo, marca y grupo de coches (los nombre de todos)
-Fecha de compra
-Matricula
-Nombre del color del coche
-Total kilómetros
-Nombre empresa que esta asegurado el coche
-Numero de póliza
*/


--Opcion 1

select b."name" as "Modelo coche", c."name"  as "Marca", d."name"  as "grupo" , a.matricula , 
a.dt_compra as "Fecha de compra", a.tot_kms , e."name"  as "Aseguradora", a.num_poliza_seguro  as "nu poliza"
from kc_cars a, carsmodels b, carsbrand c , carsgroup d , aseguradoras e
where 
-- Joins entre tablas
a.id_model  = b.id_model and 
b.id_marca  = c.id_marca  and 
c.id_group  = d.id and 
a.id_aseguradora  = e.id 

--Filtros
and a.dt_termination  = '4000-01-01' --Solo coches activos


--Opcion 2



select b."name" as "Modelo coche", c."name"  as "Marca", d."name"  as "grupo" , a.matricula , 
a.dt_compra as "Fecha de compra", a.tot_kms , e."name"  as "Aseguradora", a.num_poliza_seguro  as "nu poliza"
from kc_cars a inner join  carsmodels b on a.id_model  = b.id_model
inner join  carsbrand c on b.id_marca  = c.id_marca
inner join carsgroup d on c.id_group  = d.id
inner join aseguradoras e on a.id_aseguradora  = e.id 
where a.dt_termination  = '4000-01-01' --Solo coches activos