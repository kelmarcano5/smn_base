select
	smn_base.smn_auxiliar_tipos_servicios.tts_codigo,
	smn_base.smn_auxiliar_tipos_servicios.tts_descripcion,
	smn_base.smn_auxiliar_tipos_servicios.tts_fecha_registro,
	smn_base.smn_auxiliar_tipos_servicios.smn_auxiliar_tipos_servicios_id
from
	smn_base.smn_auxiliar_tipos_servicios
where
	smn_base.smn_auxiliar_tipos_servicios.smn_auxiliar_tipos_servicios_id is not null
and
	smn_base.smn_auxiliar_tipos_servicios.tts_idioma = '${def:locale}'
and
	smn_base.smn_auxiliar_tipos_servicios.tts_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_auxiliar_tipos_servicios.smn_auxiliar_tipos_servicios_id desc
