INSERT INTO smn_base.smn_idiomas
(
	smn_idiomas_id,
	idi_codigo,
	idi_descripcion,
	idi_idioma,
	idi_usuario,
	idi_fecha_registro,
	idi_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_idiomas},
	${fld:idi_codigo},
	${fld:idi_descripcion},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
