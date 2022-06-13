select
	case
		when smn_variable.var_estatus='AC' then '${lbl:b_active}'
		when smn_variable.var_estatus='IN' then '${lbl:b_inactive}'
	end as var_estatus_combo,
	smn_variable.*
from 
	smn_variable,
	smn_tipo_variable
where
	smn_variable.smn_tipo_variable_id=smn_tipo_variable.smn_tipo_variable_id and 
	smn_tipo_variable.smn_tipo_variable_id=${fld:id}
