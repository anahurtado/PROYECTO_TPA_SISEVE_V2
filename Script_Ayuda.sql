select * from tipo_catalogo
select * from catalogo
select * from cia_seg
select * from canal
select * from uni_neg
select * from planes
select * from cotizacion
select * from cobertura_plan
select * from cobertura
select * from producto
select * from impuesto
select * from vehiculo where idVehiculo in ('1','236')
select * from grupo_vehiculo
select * from tarifa
select * from catalogo_vehiculo
select * from persona

/*
Este es un select para que te guies como llegar a ubicar la tasa de un vehiculo para su cotización, este select actualmente solo muestra un resultado
por estar asociado a una compañía pero puede obtener más de un resultado para las N compañías que pueda tener asociado el vehiculo.
*/


select PR.idCiaseg,CI.nombre, PR.idProducto,PR.descripcion, P.idPlan,P.descripcion , (t.valor*cv.valorcomercial) as prima_neta,* 
from grupo_vehiculo g 
join tarifa t on t.idPlan = g.idPlan and t.grupo1= g.grupoveh
join vehiculo v on v.idClaseveh= g.idClaseveh and v.idCategoriaveh=g.idCategoriaveh
join catalogo_vehiculo cv on cv.idVehiculo=v.idVehiculo
join [PLAN] p on p.idPlan = g.idPlan
join producto pr on pr.idProducto=p.idProducto and pr.idCiaseg=v.idCiaseg AND cv.idCiaseg=pr.idCiaSeg
JOIN cia_seg CI ON CI.idCiaseg=PR.idCiaseg
where v.idMarca = '1'
and v.idModelo = '2' 
and t.rangoini = '0' -- Este dato debe ser calculado en base al año actual menos - año del vehiculo. Ejemplo (2014-2014 = 0)
and g.idTipotimon = '12'  -- 12 = Original
and cv.anio = '2013'  -- año del vehiculo


select idgrupovehiculo, idplan, idclaseveh, idtipotimon, idcategoriaveh, idusoveh, grupoveh, estado, usureg, fecreg from grupo_vehiculo
go

select * from marca
select * from modelo where idmarca = 2
select * from grupo_vehiculo