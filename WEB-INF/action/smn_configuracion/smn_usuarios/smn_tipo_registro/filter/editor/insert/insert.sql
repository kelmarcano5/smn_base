INSERT INTO smn_base.smn_tipo_registro
(
	smn_tipo_registro_id,
	trg_codigo,
	trg_descripcion,
	trg_idioma,
	trg_usuario,
	trg_fecha_registro,
	trg_hora,
	smn_roles_rf
)
VALUES
(
	${seq:currval@smn_base.seq_smn_tipo_registro},
	${fld:trg_codigo},
	${fld:trg_descripcion},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}',
	${fld:smn_roles_rf}
)
