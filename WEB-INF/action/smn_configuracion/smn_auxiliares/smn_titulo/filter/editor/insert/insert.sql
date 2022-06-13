INSERT INTO smn_base.smn_titulo
(
	smn_titulo_id,
	tlo_codigo,
	tlo_descripcion,
	tlo_idioma,
	tlo_usuario,
	tlo_fecha_registro,
	tlo_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_titulo},
	${fld:tlo_codigo},
	${fld:tlo_descripcion},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
