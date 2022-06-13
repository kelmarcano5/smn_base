INSERT INTO smn_base.smn_pregunta
(
	smn_pregunta_id,
	smn_tipo_variable_id,
	prg_codigo,
	prg_descripcion,
	prg_tipo_respuesta,
	sec_estatus,
	cue_idioma,
	cue_usuario,
	cue_fecha_registro,
	cue_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_pregunta},
	${fld:smn_tipo_variable_id},
	${fld:prg_codigo},
	${fld:prg_descripcion},
	${fld:prg_tipo_respuesta},
	${fld:sec_estatus},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
