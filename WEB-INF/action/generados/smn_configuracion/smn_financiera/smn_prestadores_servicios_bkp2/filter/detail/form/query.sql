select
	smn_base.smn_prestadores_servicios.*
from 
	smn_base.smn_prestadores_servicios
where
	smn_prestadores_servicios_id = ${fld:id}
