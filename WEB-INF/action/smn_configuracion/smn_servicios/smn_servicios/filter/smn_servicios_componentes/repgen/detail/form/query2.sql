select
		smn_base.smn_servicios_componentes.smn_servicios_id,
	smn_base.smn_servicios_componentes.smn_componentes_id,
	smn_base.smn_servicios_componentes.smn_servicios_id,
	smn_base.smn_servicios_componentes.smn_componentes_id,
	smn_base.smn_servicios_componentes.smn_servicios_id,
	smn_base.smn_servicios_componentes.smn_componentes_id
from
	smn_base.smn_servicios_componentes 
where
	smn_base.smn_servicios_componentes.smn_servicios_componentes_id = ${fld:id}
