select
	case
		when smn_tipo_variable.tva_estatus='AC' then '${lbl:b_active}'
		when smn_tipo_variable.tva_estatus='IN' then '${lbl:b_inactive}'
	end as tva_estatus_combo,
	smn_tipo_variable.*
from 
	smn_tipo_variable
where
	smn_tipo_variable_id = ${fld:id}
