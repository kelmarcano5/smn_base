select
	case
		when smn_seccion.sec_estatus='AC' then '${lbl:b_active}'
		when smn_seccion.sec_estatus='IN' then '${lbl:b_inactive}'
	end as sec_estatus_combo,
	smn_base.smn_seccion.*
from 
	smn_base.smn_seccion,
	smn_base.smn_cuestionario
where
	smn_seccion.smn_cuestionario_id=smn_cuestionario.smn_cuestionario_id and 
	smn_cuestionario.smn_cuestionario_id=${fld:id}
