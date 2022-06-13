select
	smn_tipo_variable.smn_tipo_variable_id,
	smn_tipo_variable.tva_codigo as tva_codigo_pl0,
	case
	when smn_variable.var_estatus='AC' then '${lbl:b_active}'
	when smn_variable.var_estatus='IN' then '${lbl:b_inactive}'
	end as var_estatus_combo,
	smn_variable.smn_tipo_variable_id,
	smn_variable.var_codigo,
	smn_variable.var_descripción,
	smn_variable.var_estatus,
	smn_variable.var_idioma,
	smn_variable.var_usuario,
	smn_variable.var_fecha_registro,
	smn_variable.var_hora,
	smn_variable.smn_variable_id
	
from
	smn_base.smn_tipo_variable,
	smn_base.smn_variable
where
	smn_base.smn_variable.smn_variable_id is not null
	and 	smn_tipo_variable.smn_tipo_variable_id=smn_variable.smn_tipo_variable_id
	${filter}
order by
		smn_base.smn_variable.smn_variable_id
