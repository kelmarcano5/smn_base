select
		smn_base.smn_accion.smn_accion_id,
	${field}
from
	smn_base.smn_accion
where
		smn_base.smn_accion.smn_accion_id is not null
	${filter}
	
	
