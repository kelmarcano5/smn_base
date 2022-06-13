INSERT INTO smn_base.smn_franquicias
(
	smn_franquicias_id,
	fra_codigo,
	fra_descripcion,
	fra_idioma,
	fra_usuario,
	fra_fecha_registro,
	fra_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_franquicias},
	${fld:fra_codigo},
	${fld:fra_descripcion},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
