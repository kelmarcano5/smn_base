select
		smn_base.smn_nivel_aprobacion.smn_nivel_aprobacion_id,
	${field}
from
	smn_base.smn_nivel_aprobacion
where
		smn_base.smn_nivel_aprobacion.smn_nivel_aprobacion_id is not null
	${filter}
	
	
