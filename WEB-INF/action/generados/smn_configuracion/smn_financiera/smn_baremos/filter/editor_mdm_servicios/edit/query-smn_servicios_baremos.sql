select
	smn_base.smn_servicios_baremos.*,
	smn_base.smn_servicios.*
from 
	smn_base.smn_servicios_baremos,
	smn_base.smn_servicios
where 
	smn_base.smn_servicios_baremos.smn_baremos_id = ${fld:id} and
	smn_base.smn_servicios_baremos.smn_servicios_id = smn_base.smn_servicios.smn_servicios_id