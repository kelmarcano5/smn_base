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
	${seq:nextval@smn_base.seq_smn_auxiliar_tipos_servicios},
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
