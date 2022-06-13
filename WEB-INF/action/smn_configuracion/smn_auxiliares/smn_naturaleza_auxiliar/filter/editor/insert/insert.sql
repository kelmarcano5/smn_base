INSERT INTO smn_base.smn_naturaleza_auxiliar
(
	smn_naturaleza_auxiliar_id,
	naa_codigo,
	naa_nombre,
	naa_idioma,
	naa_usuario,
	naa_fecha_registro,
	naa_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_naturaleza_auxiliar},
	${fld:naa_codigo},
	${fld:naa_nombre},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
