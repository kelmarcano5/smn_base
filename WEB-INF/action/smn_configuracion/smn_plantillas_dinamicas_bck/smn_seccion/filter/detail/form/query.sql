select
	case
		when smn_seccion.sec_estatus='AC' then '${lbl:b_active}'
		when smn_seccion.sec_estatus='IN' then '${lbl:b_inactive}'
	end as sec_estatus_combo,
	smn_seccion.*
from 
	smn_seccion
where
	smn_seccion_id = ${fld:id}
