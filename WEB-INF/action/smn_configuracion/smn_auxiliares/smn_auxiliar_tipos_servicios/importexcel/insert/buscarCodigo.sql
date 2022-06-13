select
	smn_base.smn_auxiliar_tipos_servicios.tts_codigo
from
	smn_base.smn_auxiliar_tipos_servicios
where
	upper(trim(smn_base.smn_auxiliar_tipos_servicios.tts_codigo)) = upper(trim(${fld:tts_codigo}))
