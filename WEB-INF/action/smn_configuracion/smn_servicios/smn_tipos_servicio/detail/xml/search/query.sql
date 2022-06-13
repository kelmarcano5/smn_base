select
	smn_base.smn_tipos_servicios.*
from
	smn_base.smn_tipos_servicios
where
	smn_tipos_servicios_id = ${fld:id}
