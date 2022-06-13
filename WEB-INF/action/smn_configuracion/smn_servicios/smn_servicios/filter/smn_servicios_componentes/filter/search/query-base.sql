select
		smn_base.smn_servicios_componentes.smn_servicios_componentes_id,
	 smn_base.smn_servicios.svc_codigo||' - '|| smn_base.smn_servicios.svc_descripcion as smn_servicios_id,
	smn_base.smn_componentes.cmp_codigo ||' - '|| smn_base.smn_componentes.cmp_descripcion as smn_componentes_id
	
from
	smn_base.smn_servicios_componentes
	inner join smn_base.smn_servicios on smn_base.smn_servicios.smn_servicios_id = smn_base.smn_servicios_componentes.smn_servicios_id 
	inner join smn_base.smn_componentes on smn_base.smn_componentes.smn_componentes_id = 	smn_base.smn_servicios_componentes.smn_componentes_id
where
	smn_servicios_componentes_id is not null
	${filter}
order by
		smn_servicios_componentes_id
