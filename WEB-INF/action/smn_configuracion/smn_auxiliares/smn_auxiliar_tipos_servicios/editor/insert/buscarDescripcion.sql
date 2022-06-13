select
		smn_base.smn_auxiliar_tipos_servicios.tts_descripcion
from
		smn_base.smn_auxiliar_tipos_servicios
where
		upper(smn_base.smn_auxiliar_tipos_servicios.tts_descripcion) = upper(${fld:tts_descripcion})
