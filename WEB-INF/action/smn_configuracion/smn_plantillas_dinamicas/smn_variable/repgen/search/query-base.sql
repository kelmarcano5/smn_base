select
		smn_base.smn_variable.smn_variable_id,
	${field}
from
	smn_base.smn_variable
where
		smn_base.smn_variable.smn_variable_id is not null
	${filter}
	
	
