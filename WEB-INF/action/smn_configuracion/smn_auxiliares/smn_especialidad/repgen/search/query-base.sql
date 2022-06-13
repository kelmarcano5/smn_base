select
	smn_base.smn_especialidad.smn_especialidad_id,
	${field}
from
	smn_base.smn_especialidad
where
	smn_base.smn_especialidad.smn_especialidad_id is not null
and
	smn_base.smn_especialidad.esp_idioma = '${def:locale}'
and
	smn_base.smn_especialidad.esp_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_especialidad.smn_especialidad_id desc
	
