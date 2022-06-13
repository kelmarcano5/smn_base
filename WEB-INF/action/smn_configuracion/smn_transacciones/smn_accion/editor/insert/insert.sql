INSERT INTO smn_base.smn_accion
(
	smn_accion_id,
	acc_codigo,
	acc_descripcion,
	acc_tipo,
	smn_mensajes_rf,
	acc_metodo,
	acc_tipo_acto_rol,
	acc_idioma,
	acc_usuario,
	acc_fecha_registro,
	acc_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_accion},
	${fld:acc_codigo},
	${fld:acc_descripcion},
	${fld:acc_tipo},
	${fld:smn_mensajes_rf},
	${fld:acc_metodo},
	${fld:acc_tipo_acto_rol},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
