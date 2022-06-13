select 
	smn_base.smn_areas_servicios.smn_areas_servicios_id as refid 
from 
	smn_base.smn_areas_servicios 
where 
	smn_base.smn_areas_servicios.smn_areas_servicios_id = ${fld:id}


