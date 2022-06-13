select
	smn_base.smn_rel_cues_secc_preg.*,
	smn_base.smn_rel_cues_secc_preg.csp_tamano_letra||'px' as csp_tamano_letra,
	smn_base.smn_rel_cues_secc_preg.csp_espacio_identacion || 'px' as csp_espacio_identacion,
	smn_base.smn_pregunta.prg_codigo || ' - ' || smn_base.smn_pregunta.prg_descripcion as pregunta_combo,
	(select tva_codigo||' - '||tva_descripcion from smn_base.smn_tipo_variable where smn_tipo_variable_id = smn_tipo_variable_col_1_id) as smn_tipo_variable_col_1_combo,
	(select tva_codigo||' - '||tva_descripcion from smn_base.smn_tipo_variable where smn_tipo_variable_id = smn_tipo_variable_col_2_id) as smn_tipo_variable_col_2_combo,
	(select tva_codigo||' - '||tva_descripcion from smn_base.smn_tipo_variable where smn_tipo_variable_id = smn_tipo_variable_col_3_id) as smn_tipo_variable_col_3_combo,
	(select tva_codigo||' - '||tva_descripcion from smn_base.smn_tipo_variable where smn_tipo_variable_id = smn_tipo_variable_col_4_id) as smn_tipo_variable_col_4_combo
from
	smn_base.smn_rel_cuestionario_seccion
	LEFT OUTER JOIN 
	smn_base.smn_rel_cues_secc_preg ON smn_base.smn_rel_cuestionario_seccion.smn_rel_cuestionario_seccion_id = smn_base.smn_rel_cues_secc_preg.smn_rel_cuestionario_seccion_id
	LEFT OUTER JOIN
	smn_base.smn_pregunta ON smn_base.smn_pregunta.smn_pregunta_id = smn_base.smn_rel_cues_secc_preg.smn_pregunta_id
where
	smn_base.smn_rel_cuestionario_seccion.smn_rel_cuestionario_seccion_id = ${fld:id}
