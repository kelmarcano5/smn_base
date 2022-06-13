INSERT INTO smn_base.smn_tipo_registro
(
	smn_tipo_registro_id,
	trg_codigo,
	trg_descripcion,
	trg_idioma,
	trg_usuario,
	trg_fecha_registro,
	trg_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_tipo_registro},
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
