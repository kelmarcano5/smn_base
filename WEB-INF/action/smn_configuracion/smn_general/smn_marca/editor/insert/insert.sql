INSERT INTO smn_base.smn_marca
(
	smn_marca_id,
	mar_codigo,
	mar_descripcion,
	mar_idioma,
	mar_usuario,
	mar_fecha_registro,
	mar_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_marca},
	${fld:mar_codigo},
	${fld:mar_descripcion},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
