select
	smn_base.smn_prestadores_servicios.smn_prestadores_servicios_id,
	${field}
from
	smn_base.smn_prestadores_servicios
	inner join smn_base.smn_areas_servicios on smn_base.smn_areas_servicios.smn_areas_servicios_id = smn_base.smn_prestadores_servicios.prs_area_servicio
	left outer join smn_base.smn_auxiliar_prestador_servicio on smn_base.smn_auxiliar_prestador_servicio.smn_auxiliar_prestador_servicio_id = smn_base.smn_prestadores_servicios.prs_auxiliar
	left outer join smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_base.smn_prestadores_servicios.prs_clase_auxiliar
	inner join smn_base.smn_direccion on smn_base.smn_direccion.smn_direccion_id = smn_base.smn_prestadores_servicios.prs_direccion
	inner join smn_base.smn_unidades_servicios on smn_base.smn_unidades_servicios.smn_unidades_servicios_id = smn_base.smn_prestadores_servicios.prs_unidad_servicio
	inner join smn_base.smn_grupos_prestadores on smn_base.smn_prestadores_servicios.smn_grupos_prestadores =  smn_base.smn_grupos_prestadores.smn_grupos_prestadores_id
where
	smn_base.smn_prestadores_servicios.smn_prestadores_servicios_id is not null
and
	smn_base.smn_prestadores_servicios.prs_idioma = '${def:locale}'
and
	smn_base.smn_prestadores_servicios.prs_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_prestadores_servicios.smn_prestadores_servicios_id desc
	
