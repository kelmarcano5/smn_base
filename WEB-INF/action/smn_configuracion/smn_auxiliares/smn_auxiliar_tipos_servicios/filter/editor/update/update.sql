UPDATE smn_base.smn_auxiliar_tipos_servicios SET
	tts_codigo=${fld:tts_codigo},
	tts_descripcion=${fld:tts_descripcion},
	tts_idioma='${def:locale}',
	tts_usuario='${def:user}'
WHERE
	smn_base.smn_auxiliar_tipos_servicios.smn_auxiliar_tipos_servicios_id=${fld:id}

