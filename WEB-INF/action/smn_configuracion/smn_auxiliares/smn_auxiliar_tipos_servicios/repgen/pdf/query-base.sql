select
	smn_base.smn_auxiliar_tipos_servicios.smn_auxiliar_tipos_servicios_id,
	${field}
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
	
	
