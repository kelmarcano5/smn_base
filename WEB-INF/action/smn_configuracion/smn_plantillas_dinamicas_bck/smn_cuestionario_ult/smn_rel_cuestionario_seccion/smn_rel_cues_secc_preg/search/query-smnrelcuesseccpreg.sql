select
	smn_base.smn_rel_cues_secc_preg.smn_rel_cues_secc_preg_id,
	smn_pregunta.smn_pregunta_id,
	smn_pregunta.prg_codigo as prg_codigo_pl0,
	smn_pregunta.prg_descripcion,
	smn_rel_cues_secc_preg.smn_rel_cuestionario_seccion_id,
	smn_rel_cues_secc_preg.smn_pregunta_id,
	smn_rel_cues_secc_preg.csp_secuencia,
	(select smn_base.smn_cuestionario.cue_descripcion from  smn_base.smn_cuestionario where smn_base.smn_cuestionario.smn_cuestionario_id is not null  and smn_base.smn_cuestionario.smn_cuestionario_id=smn_base.smn_rel_cuestionario_seccion.smn_cuestionario_id) as cue_descripcion,
	(select smn_base.smn_seccion.sec_descripcion from  smn_base.smn_seccion where smn_base.smn_seccion.smn_seccion_id is not null  and smn_base.smn_seccion.smn_seccion_id=smn_base.smn_rel_cuestionario_seccion.smn_seccion_id) as sec_descripcion
	from
	smn_base.smn_rel_cues_secc_preg
	inner join smn_base.smn_pregunta on smn_base.smn_pregunta.smn_pregunta_id = smn_base.smn_rel_cues_secc_preg.smn_pregunta_id
	inner join smn_base.smn_rel_cuestionario_seccion on smn_base.smn_rel_cuestionario_seccion.smn_rel_cuestionario_seccion_id =  smn_base.smn_rel_cues_secc_preg.smn_rel_cuestionario_seccion_id


where
	smn_base.smn_rel_cues_secc_preg.smn_rel_cuestionario_seccion_id = ${fld:id2}
