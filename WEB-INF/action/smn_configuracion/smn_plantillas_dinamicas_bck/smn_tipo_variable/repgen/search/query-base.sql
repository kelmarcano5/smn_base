select
		smn_base.smn_tipo_variable.smn_tipo_variable_id,
	${field}
from
	smn_base.smn_tipo_variable
where
		smn_base.smn_tipo_variable.smn_tipo_variable_id is not null
	${filter}
	
	
