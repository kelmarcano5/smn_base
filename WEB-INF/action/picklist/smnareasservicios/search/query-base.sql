select	
	smn_base.smn_areas_servicios.*
from
	smn_base.smn_areas_servicios 
where
	smn_areas_servicios_id is not null
	${filter}