select	
	smn_base.smn_edificacion.edf_codigo,
	smn_base.smn_edificacion.edf_descripcion,
	smn_base.smn_edificacion.edf_fecha_registro,
	smn_base.smn_edificacion.smn_edificacion_id

from
	smn_base.smn_edificacion
where
	smn_edificacion_id is not null	
 	 	${filter}
order by 
	smn_edificacion_id