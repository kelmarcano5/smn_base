INSERT INTO smn_base.smn_comunidades
(
	smn_comunidades_id,
	cmn_codigo,
	cmn_nombre,
	cmn_idioma,
	cmn_usuario,
	cmn_fecha_registro,
	cmn_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_comunidades},
	${fld:cmn_codigo},
	${fld:cmn_nombre},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
