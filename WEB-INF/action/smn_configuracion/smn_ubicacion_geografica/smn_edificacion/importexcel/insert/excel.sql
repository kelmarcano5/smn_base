INSERT INTO smn_base.smn_edificacion
(
	smn_edificacion_id,
	edf_codigo,
	edf_descripcion,
	edf_idioma,
	edf_usuario,
	edf_fecha_registro,
	edf_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_edificacion},
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
