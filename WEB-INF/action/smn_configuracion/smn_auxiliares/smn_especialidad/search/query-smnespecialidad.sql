select
	smn_base.smn_especialidad.smn_especialidad_id,
	smn_base.smn_especialidad.esp_codigo,
	smn_base.smn_especialidad.esp_descripcion,
	smn_base.smn_especialidad.esp_fecha_registro
from
	smn_base.smn_especialidad
where
	smn_base.smn_especialidad.esp_idioma = '${def:locale}'
order by
	smn_base.smn_especialidad.smn_especialidad_id desc
