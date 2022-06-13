select
	smn_base.smn_rel_cuestionario_seccion.smn_rel_cuestionario_seccion_id,
	smn_base.smn_cuestionario.smn_cuestionario_id,
	smn_cuestionario.cue_codigo as cue_codigo_pl0,
	smn_base.smn_seccion.smn_seccion_id,
	smn_seccion.sec_codigo as sec_codigo_pl1,
	smn_seccion.sec_descripcion,
	smn_cuestionario.cue_descripcion,
	smn_rel_cuestionario_seccion.smn_cuestionario_id,
	smn_rel_cuestionario_seccion.smn_seccion_id,
	smn_rel_cuestionario_seccion.rcs_secuencia
	
from
	smn_base.smn_cuestionario,
	smn_base.smn_seccion,
	smn_base.smn_rel_cuestionario_seccion
where
	smn_base.smn_cuestionario.smn_cuestionario_id=smn_base.smn_rel_cuestionario_seccion.smn_cuestionario_id and
	smn_base.smn_seccion.smn_seccion_id=smn_base.smn_rel_cuestionario_seccion.smn_seccion_id and
	smn_base.smn_rel_cuestionario_seccion.smn_cuestionario_id=${fld:id2}
order by
	smn_rel_cuestionario_seccion.rcs_secuencia
