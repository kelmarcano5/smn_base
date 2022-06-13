select
		smn_base.smn_proyecto.smn_proyecto_id,
	${field}
from
	smn_base.smn_proyecto
where
		smn_base.smn_proyecto.smn_proyecto_id is not null
	${filter}
	
	
