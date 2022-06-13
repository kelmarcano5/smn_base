select
	smn_base.smn_rel_prestadores_servicios_componentes.*,
	smn_base.smn_componentes.*
from 
	smn_base.smn_rel_prestadores_servicios_componentes,
	smn_base.smn_componentes
where 
	smn_base.smn_rel_prestadores_servicios_componentes.smn_prestadores_servicios_id = ${fld:id}  and
	smn_base.smn_rel_prestadores_servicios_componentes.smn_componentes_id = smn_base.smn_componentes.smn_componentes_id