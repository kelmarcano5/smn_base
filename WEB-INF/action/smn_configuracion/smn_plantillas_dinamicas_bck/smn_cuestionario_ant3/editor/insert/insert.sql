INSERT INTO smn_base.smn_cuestionario
(
	smn_cuestionario_id,
	cue_codigo,
	cue_descripcion,
	smn_modulo_rf,
	smn_esquema_rf,
	smn_campo_rf,
	cue_estatus,
	cue_idioma,
	cue_usuario,
	cue_fecha_registro,
	cue_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_cuestionario},
	${fld:cue_codigo},
	${fld:cue_descripcion},
	${fld:smn_modulo_rf},
	${fld:smn_esquema_rf},
	${fld:smn_campo_rf},
	'AC',
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
