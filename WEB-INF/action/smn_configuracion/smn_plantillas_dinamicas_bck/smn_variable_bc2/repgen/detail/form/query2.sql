select
		smn_base.smn_variable.smn_tipo_variable_id,
	smn_base.smn_variable.var_codigo,
	smn_base.smn_variable.var_descripción,
	smn_base.smn_variable.var_estatus,
	smn_base.smn_variable.var_fecha_registro,
	smn_base.smn_variable.smn_tipo_variable_id,
	smn_base.smn_variable.var_codigo,
	smn_base.smn_variable.var_descripción,
	smn_base.smn_variable.var_estatus,
	smn_base.smn_variable.var_fecha_registro
from
	smn_base.smn_variable 
where
	smn_base.smn_variable.smn_variable_id = ${fld:id}
