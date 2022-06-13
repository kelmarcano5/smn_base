select
		smn_base.smn_auxiliar_tipos_servicios.tts_codigo
from
		smn_base.smn_auxiliar_tipos_servicios
where
		upper(smn_base.smn_auxiliar_tipos_servicios.tts_codigo) = upper(${fld:tts_codigo})
