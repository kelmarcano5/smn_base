INSERT INTO smn_base.smn_tipo_gasto
(
	smn_tipo_gasto_id,
	tig_codigo,
	tig_descripcion,
	tig_idioma,
	tig_usuario,
	tig_fecha_registro,
	tig_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_tipo_gasto},
	${fld:tig_codigo},
	${fld:tig_descripcion},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
