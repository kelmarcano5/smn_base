INSERT INTO smn_base.smn_tipo_via
(
	smn_tipo_via_id,
	tiv_codigo,
	tiv_descripcion,
	tiv_idioma,
	tiv_usuario,
	tiv_fecha_registro,
	tiv_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_tipo_via},
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
