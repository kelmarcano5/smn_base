select
	smn_tipo_variable.smn_tipo_variable_id,
	smn_tipo_variable.tva_codigo as tva_codigo_pl0,
	case
	when smn_variable.var_estatus='AC' then '${lbl:b_active}'
	when smn_variable.var_estatus='IN' then '${lbl:b_inactive}'
	end as var_estatus_combo,
	smn_variable.*
from
	smn_tipo_variable,
	smn_variable
where
	smn_tipo_variable.smn_tipo_variable_id=smn_variable.smn_tipo_variable_id
	and
	smn_variable_id = ${fld:id}
