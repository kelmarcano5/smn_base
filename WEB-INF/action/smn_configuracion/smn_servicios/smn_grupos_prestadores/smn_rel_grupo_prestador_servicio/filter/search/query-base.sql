select
	smn_base.smn_rel_grupo_prestador_servicio.smn_rel_grupo_prestador_servicio_id,
	smn_base.smn_prestadores_servicios.prs_codigo ||' - '||smn_base.smn_prestadores_servicios.prs_descripcion as smn_prestadores_servicios_id,
	smn_base.smn_grupos_prestadores.gpp_codigo 	||' - '|| smn_base.smn_grupos_prestadores.gpp_descripcion as smn_grupos_prestadores_id
from
	smn_base.smn_rel_grupo_prestador_servicio
	inner join smn_base.smn_prestadores_servicios on smn_base.smn_prestadores_servicios.smn_prestadores_servicios_id = smn_base.smn_rel_grupo_prestador_servicio.smn_prestadores_servicios_id
	inner join smn_base.smn_grupos_prestadores on smn_base.smn_rel_grupo_prestador_servicio.smn_grupos_prestadores_id = smn_base.smn_rel_grupo_prestador_servicio.smn_grupos_prestadores_id
where
	smn_rel_grupo_prestador_servicio_id is not null
	${filter}
order by
		smn_rel_grupo_prestador_servicio_id
