select
		smn_base.smn_servicios.smn_servicios_id,
	${field}
from
	smn_base.smn_servicios
where
		smn_base.smn_servicios.smn_servicios_id is not null
	${filter}
	
	
