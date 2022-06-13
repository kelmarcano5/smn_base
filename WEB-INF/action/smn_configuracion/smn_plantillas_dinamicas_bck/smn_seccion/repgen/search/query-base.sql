select
		smn_base.smn_seccion.smn_seccion_id,
	${field}
from
	smn_base.smn_seccion
where
		smn_base.smn_seccion.smn_seccion_id is not null
	${filter}
	
	
