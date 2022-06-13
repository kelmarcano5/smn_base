select	
	smn_base.smn_grupos_prestadores.smn_grupos_prestadores_id, 
	smn_base.smn_grupos_prestadores.gpp_codigo as gpp_codigo_pl0,
	smn_base.smn_servicios.smn_servicios_id, 
	smn_base.smn_servicios.svc_codigo as svc_codigo_pl1,
	case
		when smn_base.smn_componentes.cmp_tipo='SE' then '${lbl:b_services}'
		when smn_base.smn_componentes.cmp_tipo='IN' then '${lbl:b_inventory}'
		when smn_base.smn_componentes.cmp_tipo='PR' then '${lbl:b_providers}'
	end as cmp_tipo_combo,
	smn_base.smn_componentes.smn_grupos_prestadores_id,
	smn_base.smn_componentes.smn_servicios_id,
	smn_base.smn_componentes.cmp_descripcion,
	smn_base.smn_componentes.cmp_area_servicio,
	smn_base.smn_componentes.cmp_clase_auxiliar,
	smn_base.smn_componentes.cmp_tipo,
	smn_base.smn_componentes.cmp_fecha_registro,
	smn_base.smn_componentes.smn_componentes_id

from
	smn_base.smn_grupos_prestadores,
	smn_base.smn_servicios,
	smn_base.smn_componentes
where
	smn_componentes_id is not null	
and 	smn_base.smn_grupos_prestadores.smn_grupos_prestadores_id=smn_base.smn_componentes.smn_grupos_prestadores_id and
	smn_base.smn_servicios.smn_servicios_id=smn_base.smn_componentes.smn_servicios_id 
	 	${filter}
order by 
	smn_componentes_id