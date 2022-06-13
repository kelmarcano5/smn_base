INSERT INTO smn_base.smn_seccion
(
	smn_seccion_id,
	sec_codigo,
	sec_descripcion,
	sec_estatus,
	sec_idioma,
	sec_usuario,
	sec_fecha_registro,
	sec_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_seccion},
	${fld:sec_codigo},
	${fld:sec_descripcion},
	${fld:sec_estatus},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
