select
	smn_base.smn_auxiliar_areas_servicios.smn_auxiliar_areas_servicios_id,
	${field}
from
	smn_base.smn_auxiliar_areas_servicios
	inner join smn_base.smn_v_auxiliar on smn_base.smn_v_auxiliar.smn_v_auxiliar_id = smn_base.smn_auxiliar_areas_servicios.tse_auxiliar
	left outer join smn_base.smn_auxiliar_sucursales on smn_base.smn_auxiliar_sucursales.smn_auxiliar_sucursales_id = smn_base.smn_auxiliar_areas_servicios.tse_auxiliar_sucursal
	left outer join smn_base.smn_auxiliar_unidades_negocios on smn_base.smn_auxiliar_unidades_negocios.smn_auxiliar_unidades_negocios_id = smn_base.smn_auxiliar_areas_servicios.tse_auxiliar_unidad_negocio
	inner join smn_base.smn_auxiliar_tipos_servicios on smn_base.smn_auxiliar_tipos_servicios.smn_auxiliar_tipos_servicios_id=smn_base.smn_auxiliar_areas_servicios.smn_auxiliar_tipos_servicios_id
where
	smn_base.smn_auxiliar_areas_servicios.smn_auxiliar_areas_servicios_id is not null
and
	smn_base.smn_auxiliar_areas_servicios.tse_idioma = '${def:locale}'
and
	smn_base.smn_auxiliar_areas_servicios.tse_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_auxiliar_areas_servicios.smn_auxiliar_areas_servicios_id desc
	