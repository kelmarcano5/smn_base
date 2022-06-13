select
	smn_base.smn_especialidad.esp_codigo
from
	smn_base.smn_especialidad
where
	upper(trim(smn_base.smn_especialidad.esp_codigo)) = upper(trim(${fld:esp_codigo}))
