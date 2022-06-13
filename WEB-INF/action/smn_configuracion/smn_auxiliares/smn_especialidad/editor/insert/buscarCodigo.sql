select
		smn_base.smn_especialidad.esp_codigo
from
		smn_base.smn_especialidad
where
		upper(smn_base.smn_especialidad.esp_codigo) = upper(${fld:esp_codigo})
