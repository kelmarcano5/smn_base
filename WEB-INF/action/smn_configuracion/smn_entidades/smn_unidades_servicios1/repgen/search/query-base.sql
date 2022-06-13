select
	smn_base.smn_unidades_servicios.smn_unidades_servicios_id,
	${field}
from
	smn_base.smn_areas_servicios,
	smn_base.smn_unidades_servicios
where
	smn_base.smn_areas_servicios.smn_areas_servicios_id=smn_base.smn_unidades_servicios.smn_areas_servicios_id
and
	smn_base.smn_unidades_servicios.smn_unidades_servicios_id is not null
and
	smn_base.smn_unidades_servicios.uns_idioma = '${def:locale}'
and
	smn_base.smn_unidades_servicios.uns_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_unidades_servicios.smn_unidades_servicios_id desc
	
	
