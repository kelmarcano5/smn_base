select	
	smn_base.smn_grupos_prestadores.smn_grupos_prestadores_id, 
	smn_base.smn_grupos_prestadores.gpp_codigo as gpp_codigo_pl0,
	smn_base.smn_prestadores_servicios.smn_grupos_prestadores_id,
	smn_base.smn_prestadores_servicios.prs_nombres,
	smn_base.smn_prestadores_servicios.prs_apellidos,
	smn_base.smn_prestadores_servicios.prs_area_servicio,
	smn_base.smn_prestadores_servicios.prs_clase_auxiliar,
	smn_base.smn_prestadores_servicios.prs_auxiliar,
	smn_base.smn_prestadores_servicios.prs_fecha_registro,
	smn_base.smn_prestadores_servicios.smn_prestadores_servicios_id

from
	smn_base.smn_grupos_prestadores,
	smn_base.smn_prestadores_servicios
where
	smn_prestadores_servicios_id is not null	
and 	smn_base.smn_grupos_prestadores.smn_grupos_prestadores_id=smn_base.smn_prestadores_servicios.smn_grupos_prestadores_id 
	 	${filter}
order by 
	smn_prestadores_servicios_id