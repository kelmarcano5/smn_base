select
		smn_base.smn_especialidad.esp_descripcion
from
		smn_base.smn_especialidad
where
		upper(smn_base.smn_especialidad.esp_descripcion) = upper(${fld:esp_descripcion})
