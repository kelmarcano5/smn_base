select	
	smn_base.smn_tipo_prestadores_servicios.*
from
	smn_base.smn_prestadores_servicios,
	smn_base.smn_tipo_prestadores_servicios 
where
	smn_base.smn_prestadores_servicios.smn_prestadores_servicios_id=smn_base.smn_tipo_prestadores_servicios.smn_tipo_prestadores_servicios_id and
	smn_tipo_prestadores_servicios_id = ${fld:id} 
	


