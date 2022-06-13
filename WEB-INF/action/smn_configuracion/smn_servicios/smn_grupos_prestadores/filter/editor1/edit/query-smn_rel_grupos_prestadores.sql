select
	smn_base.smn_rel_grupo_prestador_servicio.*,
	smn_base.smn_grupos_prestadores.*,
	smn_base.smn_grupos_prestadores.gpp_codigo as smn_grupos_prestadores_id
from 
	smn_base.smn_rel_grupo_prestador_servicio,
	smn_base.smn_grupos_prestadores
where 
	smn_base.smn_rel_grupo_prestador_servicio.smn_rel_grupo_prestador_servicio_id = ${fld:id} and
	smn_base.smn_rel_grupo_prestador_servicio.smn_grupos_prestadores_rf = smn_base.smn_grupos_prestadores.smn_grupos_prestadores_id