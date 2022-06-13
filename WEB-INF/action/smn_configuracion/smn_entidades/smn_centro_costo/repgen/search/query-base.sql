select
	smn_base.smn_centro_costo.smn_centro_costo_id,
	${field}
from
	smn_base.smn_centro_costo
	left outer join smn_base.smn_almacen on smn_base.smn_almacen.smn_almacen_id = smn_base.smn_centro_costo.cco_almacen
	left outer join smn_base.smn_areas_servicios on smn_base.smn_areas_servicios.smn_areas_servicios_id = smn_base.smn_centro_costo.cco_area_servicio
	inner join smn_base.smn_entidades on smn_base.smn_entidades.smn_entidades_id = smn_base.smn_centro_costo.cco_empresa
	left outer join smn_base.smn_sucursales on smn_base.smn_sucursales.smn_sucursales_id = smn_base.smn_centro_costo.cco_sucursal
	left outer join smn_base.smn_unidades_servicios on smn_base.smn_unidades_servicios.smn_unidades_servicios_id = smn_base.smn_centro_costo.cco_unidad_servicio
where
	smn_base.smn_centro_costo.smn_centro_costo_id is not null
and
	smn_base.smn_centro_costo.cco_idioma = '${def:locale}'
and
	smn_base.smn_centro_costo.cco_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_centro_costo.smn_centro_costo_id desc
	
