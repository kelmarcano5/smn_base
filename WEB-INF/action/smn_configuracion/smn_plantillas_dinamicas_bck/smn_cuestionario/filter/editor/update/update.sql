UPDATE smn_base.smn_cuestionario SET
	cue_codigo=${fld:cue_codigo},
	cue_descripcion=${fld:cue_descripcion},
	smn_modulo_rf=${fld:smn_modulo_rf},
	cue_color_letra=${fld:cue_color_letra},
	cue_tipo_letra=${fld:cue_tipo_letra},
	cue_tamano_letra=${fld:cue_tamano_letra},
	cue_color_sombreado=${fld:cue_color_sombreado},
	cue_color_formulario=${fld:cue_color_formulario},
	cue_idioma='${def:locale}',
	cue_usuario='${def:user}',
	cue_fecha_registro={d '${def:date}'},
	cue_hora='${def:time}'

WHERE
	smn_cuestionario_id=${fld:id}

