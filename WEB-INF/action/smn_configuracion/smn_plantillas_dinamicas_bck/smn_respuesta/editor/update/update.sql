UPDATE smn_base.smn_respuesta SET
	smn_cuestionario_id=${fld:smn_cuestionario_id},
	smn_seccion_id=${fld:smn_seccion_id},
	smn_pregunta_id=${fld:smn_pregunta_id},
	smn_tipo_variable_id=${fld:smn_tipo_variable_id},
	smn_tipo_respuesta_id=${fld:smn_tipo_respuesta_id},
	smn_variable_id=${fld:smn_variable_id},
	res_texto_respuesta=${fld:res_texto_respuesta},
	res_idioma='${def:locale}',
	res_usuario='${def:user}',
	res_fecha_registro='${def:date}',
	res_hora='${def:time}'

WHERE
	smn_respuesta_id=${fld:id}

