select
	smn_base.smn_especialidad.esp_descripcion
from
	smn_base.smn_especialidad
where
	upper(trim(smn_base.smn_especialidad.esp_descripcion)) = upper(trim(${fld:esp_descripcion}))
