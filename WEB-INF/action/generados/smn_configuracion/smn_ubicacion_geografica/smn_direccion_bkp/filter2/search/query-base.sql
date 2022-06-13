select	
	smn_base.smn_direccion.dir_codigo,
	smn_base.smn_direccion.dir_descripcion,
	smn_base.smn_direccion.dir_pais,
	smn_base.smn_direccion.dir_entidad_federal,
	smn_base.smn_direccion.dir_ciudad,
	smn_base.smn_direccion.dir_zona_postal,
	smn_base.smn_direccion.dir_fecha_registro,
	smn_base.smn_direccion.smn_direccion_id

from
	smn_base.smn_direccion
where
	smn_direccion_id is not null	
 	 	${filter}
order by 
	smn_direccion_id