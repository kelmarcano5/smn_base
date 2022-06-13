select
		smn_base.smn_tipo_prestadores_servicios.smn_tipo_prestadores_servicios_id,
	${field}
from
	smn_base.smn_tipo_prestadores_servicios
where
		smn_base.smn_tipo_prestadores_servicios.smn_tipo_prestadores_servicios_id is not null
	${filter}
	
	
