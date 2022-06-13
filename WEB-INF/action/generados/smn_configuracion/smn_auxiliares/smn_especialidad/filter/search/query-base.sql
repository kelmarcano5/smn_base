select	
	smn_base.smn_especialidad.esp_codigo,
	smn_base.smn_especialidad.esp_descripcion,
	smn_base.smn_especialidad.esp_fecha_registro,
	smn_base.smn_especialidad.smn_especialidad_id

from
	smn_base.smn_especialidad
where
	smn_especialidad_id is not null	
 	 	${filter}
order by 
	smn_especialidad_id