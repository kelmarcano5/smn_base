select	
	smn_base.smn_componentes.smn_componentes_id, 
	smn_base.smn_componentes.cmp_codigo as cmp_codigo_pl0,
	smn_base.smn_servicios_componentes.*
from
	smn_base.smn_servicios ,
	smn_base.smn_componentes,
	smn_base.smn_servicios_componentes
where
	smn_base.smn_servicios_componentes.smn_servicios_id=smn_base.smn_servicios.smn_servicios_id and 
	smn_base.smn_servicios.smn_servicios_id=${fld:id}  and 
	smn_base.smn_componentes.smn_componentes_id=smn_base.smn_servicios_componentes.smn_componentes_id 

