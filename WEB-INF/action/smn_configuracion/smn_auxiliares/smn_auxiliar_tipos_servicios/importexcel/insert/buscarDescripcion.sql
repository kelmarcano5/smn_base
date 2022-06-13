select
	smn_base.smn_auxiliar_tipos_servicios.tts_descripcion
from
	smn_base.smn_auxiliar_tipos_servicios
where
	upper(trim(smn_base.smn_auxiliar_tipos_servicios.tts_descripcion)) = upper(trim(${fld:tts_descripcion}))
