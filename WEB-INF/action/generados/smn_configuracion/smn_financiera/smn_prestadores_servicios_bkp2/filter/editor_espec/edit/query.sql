select	
	smn_base.smn_grupos_prestadores.smn_grupos_prestadores_id, 
	smn_base.smn_grupos_prestadores.gpp_codigo as gpp_codigo_pl0,
	smn_base.smn_prestadores_servicios.*
from
	smn_base.smn_grupos_prestadores,
	smn_base.smn_prestadores_servicios 
where
	smn_base.smn_grupos_prestadores.smn_grupos_prestadores_id=smn_base.smn_prestadores_servicios.smn_grupos_prestadores_id and
	smn_prestadores_servicios_id = ${fld:id} 
	


