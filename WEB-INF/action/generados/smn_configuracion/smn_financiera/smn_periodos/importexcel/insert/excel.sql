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
	${seq:nextval@smn_base.seq_smn_periodos},
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
