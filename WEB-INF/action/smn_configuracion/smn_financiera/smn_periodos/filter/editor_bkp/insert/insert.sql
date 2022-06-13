INSERT INTO smn_base.smn_periodos
(
	smn_periodos_id,
	prd_codigo,
	prd_descripcion,
	prd_idioma,
	prd_usuario,
	prd_fecha_registro,
	prd_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_periodos},
	${fld:prd_codigo},
	${fld:prd_descripcion},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
