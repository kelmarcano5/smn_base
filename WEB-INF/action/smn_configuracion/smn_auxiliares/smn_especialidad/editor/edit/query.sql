select	
	smn_base.smn_especialidad.smn_especialidad_id,
	smn_base.smn_especialidad.esp_codigo,
	smn_base.smn_especialidad.esp_descripcion,
	smn_base.smn_especialidad.esp_idioma,
	smn_base.smn_especialidad.esp_usuario,
	smn_base.smn_especialidad.esp_fecha_registro,
	smn_base.smn_especialidad.esp_hora
from 
	smn_base.smn_especialidad
	left outer join smn_base.smn_rel_sucursal_especialidad 
	on smn_base.smn_rel_sucursal_especialidad.smn_especialidad_id = smn_base.smn_especialidad.smn_especialidad_id
where 
	smn_base.smn_especialidad.smn_especialidad_id = ${fld:id}


