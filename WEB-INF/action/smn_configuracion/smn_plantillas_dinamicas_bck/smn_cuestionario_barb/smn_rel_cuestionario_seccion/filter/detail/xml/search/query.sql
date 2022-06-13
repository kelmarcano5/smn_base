select
	smn_cuestionario.smn_cuestionario_id,
	smn_cuestionario.cue_codigo as cue_codigo_pl0,
	smn_seccion.smn_seccion_id,
	smn_seccion.sec_codigo as sec_codigo_pl1,
	smn_rel_cuestionario_seccion.*
from
	smn_cuestionario,
	smn_seccion,
	smn_rel_cuestionario_seccion
where
	smn_cuestionario.smn_cuestionario_id=smn_rel_cuestionario_seccion.smn_cuestionario_id and
	smn_seccion.smn_seccion_id=smn_rel_cuestionario_seccion.smn_seccion_id
	and
	smn_rel_cuestionario_seccion_id = ${fld:id}
