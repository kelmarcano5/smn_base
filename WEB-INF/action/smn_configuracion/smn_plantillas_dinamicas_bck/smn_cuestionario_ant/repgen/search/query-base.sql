select
		smn_base.smn_cuestionario.smn_cuestionario_id,
	${field}
from
	smn_base.smn_cuestionario
where
		smn_base.smn_cuestionario.smn_cuestionario_id is not null
	${filter}
	
	
