select	
	smn_base.smn_almacen.alm_codigo,
	smn_base.smn_almacen.alm_nombre,
	smn_base.smn_almacen.alm_fecha_registro,
	smn_base.smn_almacen.smn_almacen_id

from
	smn_base.smn_almacen
where
	smn_almacen_id is not null	
 	 	${filter}
order by 
	smn_almacen_id