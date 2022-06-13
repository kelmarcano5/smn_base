select
	smn_base.smn_tipo_prestadores_servicios.*
from
	smn_base.smn_tipo_prestadores_servicios
where
	smn_tipo_prestadores_servicios_id = ${fld:id}
