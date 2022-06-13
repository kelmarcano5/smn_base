UPDATE smn_base.smn_rel_cues_secc_preg SET
	smn_rel_cuestionario_seccion_id=${fld:smn_rel_cuestionario_seccion_id},
	smn_pregunta_id=${fld:smn_pregunta_id},
	csp_tipo_pregunta=${fld:csp_tipo_pregunta},
	csp_secuencia=${fld:csp_secuencia},
	csp_color_letra=${fld:csp_color_letra},
	csp_tipo_letra=${fld:csp_tipo_letra},
	csp_tamano_letra=${fld:csp_tamano_letra},
	csp_color_sombreado=${fld:csp_color_sombreado},
	csp_espacio_identacion=${fld:csp_espacio_identacion},
	csp_tipo_valor=${fld:csp_tipo_valor},
	smn_tipo_variable_col_1_id=${fld:smn_tipo_variable_col_1_id},
	smn_tipo_variable_col_2_id=${fld:smn_tipo_variable_col_2_id},
	smn_tipo_variable_col_3_id=${fld:smn_tipo_variable_col_3_id},
	smn_tipo_variable_col_4_id=${fld:smn_tipo_variable_col_4_id}

WHERE
	smn_rel_cues_secc_preg_id=${fld:id}

