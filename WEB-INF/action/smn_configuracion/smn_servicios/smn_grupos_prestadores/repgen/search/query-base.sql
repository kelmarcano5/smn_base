select
	smn_base.smn_grupos_prestadores.smn_grupos_prestadores_id,
	${field}
from
	smn_base.smn_areas_servicios,
	smn_base.smn_unidades_servicios,
	smn_base.smn_grupos_prestadores
where
	smn_base.smn_grupos_prestadores.smn_grupos_prestadores_id is not null
and
	smn_base.smn_areas_servicios.smn_areas_servicios_id = smn_base.smn_grupos_prestadores.gpp_area_servicio 
and
	smn_base.smn_unidades_servicios.smn_unidades_servicios_id = smn_base.smn_grupos_prestadores.gpp_unidad_servicio 
and
	smn_base.smn_grupos_prestadores.gpp_idioma = '${def:locale}'
and
	smn_base.smn_grupos_prestadores.gpp_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_grupos_prestadores.smn_grupos_prestadores_id desc
	
