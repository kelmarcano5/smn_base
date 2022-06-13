select	
	smn_base.smn_grupos_prestadores.smn_grupos_prestadores_id, 
	smn_base.smn_grupos_prestadores.gpp_codigo as gpp_codigo_pl0,
	smn_base.smn_servicios.smn_servicios_id, 
	smn_base.smn_servicios.svc_codigo as svc_codigo_pl1,
	smn_base.smn_componentes.*
from
	smn_base.smn_grupos_prestadores,
	smn_base.smn_servicios,
	smn_base.smn_componentes 
where
	smn_base.smn_grupos_prestadores.smn_grupos_prestadores_id=smn_base.smn_componentes.smn_grupos_prestadores_id and
	smn_base.smn_servicios.smn_servicios_id=smn_base.smn_componentes.smn_servicios_id and
	smn_componentes_id = ${fld:id} 
	


