INSERT INTO smn_base.smn_terceros_modulos
(
	smn_terceros_modulos_id,
	smn_terceros_id,
	smn_app_id,
	trm_codigo,
	trm_nombre,
	trm_idioma,
	trm_usuario,
	trm_fecha_registro,
	trm_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_terceros_modulos},
	${fld:smn_terceros_id},
	${fld:smn_app_id},
	${fld:trm_codigo},
	${fld:trm_nombre},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
