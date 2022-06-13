select	
	smn_base.smn_tipos_servicios.smn_tipos_servicios_id, 
	smn_base.smn_tipos_servicios.tsr_codigo as tsr_codigo_pl0,
	smn_base.smn_areas_servicios.*
from
	smn_base.smn_tipos_servicios,
	smn_base.smn_areas_servicios 
where
	smn_base.smn_tipos_servicios.smn_tipos_servicios_id=smn_base.smn_areas_servicios.smn_tipos_servicios_id and
	smn_areas_servicios_id = ${fld:id} 
	


