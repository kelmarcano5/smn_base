INSERT INTO smn_base.smn_tipo_variable
(
	smn_tipo_variable_id,
	tva_codigo,
	tva_descripcion,
	tva_estatus,
	tva_idioma,
	tva_usuario,
	tva_fecha_registro,
	tva_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_tipo_variable},
	${fld:tva_codigo},
	${fld:tva_descripcion},
	'AC',
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
