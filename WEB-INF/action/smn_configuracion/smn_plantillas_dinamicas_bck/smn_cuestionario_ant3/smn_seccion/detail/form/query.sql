select	
	smn_cuestionario.smn_cuestionario_id, 
	smn_cuestionario.cue_codigo as cue_codigo_pl0,
	case
		when smn_seccion.sec_estatus='AC' then '${lbl:b_active}'
		when smn_seccion.sec_estatus='IN' then '${lbl:b_inactive}'
	end as sec_estatus_combo,
	smn_base.smn_seccion.*
from
	smn_base.smn_cuestionario,
	smn_base.smn_seccion 
where
	smn_cuestionario.smn_cuestionario_id=smn_seccion.smn_cuestionario_id 
 and 
	smn_base.smn_seccion.smn_seccion_id = ${fld:id}
