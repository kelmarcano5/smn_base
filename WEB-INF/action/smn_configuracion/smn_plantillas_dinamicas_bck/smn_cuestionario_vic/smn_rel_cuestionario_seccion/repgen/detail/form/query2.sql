select
		smn_base.smn_rel_cuestionario_seccion.smn_cuestionario_id,
	smn_base.smn_rel_cuestionario_seccion.smn_seccion_id
from
	smn_base.smn_rel_cuestionario_seccion 
where
	smn_base.smn_rel_cuestionario_seccion.smn_rel_cuestionario_seccion_id = ${fld:id}
