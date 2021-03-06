INSERT INTO smn_base.smn_cuestionario
(
	smn_cuestionario_id,
	cue_codigo,
	cue_descripcion,
	smn_modulo_rf,
	cue_color_letra,
	cue_tipo_letra,
	cue_tamano_letra,
	cue_color_sombreado,
	cue_color_formulario,
	cue_estatus,
	cue_idioma,
	cue_usuario,
	cue_fecha_registro,
	cue_hora, 
	cue_nivel_seguridad
)
VALUES
(
	${seq:currval@smn_base.seq_smn_cuestionario},
	${fld:cue_codigo},
	${fld:cue_descripcion},
	${fld:smn_modulo_rf},
	${fld:cue_color_letra},
	${fld:cue_tipo_letra},
	${fld:cue_tamano_letra},
	${fld:cue_color_sombreado},
	${fld:cue_color_formulario},
	'AC',
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}',
	${fld:cue_nivel_seguridad}
)
