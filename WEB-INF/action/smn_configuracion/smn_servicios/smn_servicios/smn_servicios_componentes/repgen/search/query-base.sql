select
		smn_base.smn_servicios_componentes.smn_servicios_componentes_id,
	${field}
from
	smn_base.smn_servicios_componentes
where
		smn_base.smn_servicios_componentes.smn_servicios_componentes_id is not null
	${filter}
	
	
