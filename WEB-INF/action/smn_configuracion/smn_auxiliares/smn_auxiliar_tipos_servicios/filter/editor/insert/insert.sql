INSERT INTO smn_base.smn_auxiliar_tipos_servicios
(
	smn_auxiliar_tipos_servicios_id,
	tts_codigo,
	tts_descripcion,
	tts_idioma,
	tts_usuario,
	tts_fecha_registro,
	tts_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_auxiliar_tipos_servicios},
	${fld:tts_codigo},
	${fld:tts_descripcion},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
