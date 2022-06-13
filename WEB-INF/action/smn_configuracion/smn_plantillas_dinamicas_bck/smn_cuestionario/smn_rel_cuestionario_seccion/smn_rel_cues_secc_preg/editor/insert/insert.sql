INSERT INTO smn_base.smn_rel_cues_secc_preg
(
	smn_rel_cues_secc_preg_id,
	smn_rel_cuestionario_seccion_id,
	smn_pregunta_id,
	csp_tipo_pregunta,
	csp_secuencia,
	csp_color_letra,
	csp_tipo_letra,
	csp_tamano_letra,
	csp_color_sombreado,
	csp_espacio_identacion,
	smn_tipo_variable_col_1_id,
	smn_tipo_variable_col_2_id,
	smn_tipo_variable_col_3_id,
	smn_tipo_variable_col_4_id

)
VALUES
(
	${seq:currval@smn_base.seq_smn_rel_cues_secc_preg},
	${fld:smn_rel_cuestionario_seccion_id},
	${fld:smn_pregunta_id},
	${fld:csp_tipo_pregunta},
	${fld:csp_secuencia},
	${fld:csp_color_letra},
	${fld:csp_tipo_letra},
	${fld:csp_tamano_letra},
	${fld:csp_color_sombreado},
	${fld:csp_espacio_identacion},
	${fld:smn_tipo_variable_col_1_id},
	${fld:smn_tipo_variable_col_2_id},
	${fld:smn_tipo_variable_col_3_id},
	${fld:smn_tipo_variable_col_4_id}
	
)
