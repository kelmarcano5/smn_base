select
	smn_base.smn_almacen.alm_nombre,
	smn_base.smn_areas_servicios.ase_descripcion,
	smn_base.smn_entidades.ent_descripcion_corta,
	smn_base.smn_sucursales.suc_nombre,
	smn_base.smn_unidades_servicios.uns_descripcion,
	${field}
from
	smn_base.smn_centro_costo
	left outer join smn_base.smn_almacen on smn_base.smn_almacen.smn_almacen_id = smn_base.smn_centro_costo.cco_almacen
	left outer join smn_base.smn_areas_servicios on smn_base.smn_areas_servicios.smn_areas_servicios_id = smn_base.smn_centro_costo.cco_area_servicio
	inner join smn_base.smn_entidades on smn_base.smn_entidades.smn_entidades_id = smn_base.smn_centro_costo.cco_empresa
	left outer join smn_base.smn_sucursales on smn_base.smn_sucursales.smn_sucursales_id = smn_base.smn_centro_costo.cco_sucursal
	left outer join smn_base.smn_unidades_servicios on smn_base.smn_unidades_servicios.smn_unidades_servicios_id = smn_base.smn_centro_costo.cco_unidad_servicio
where
		smn_base.smn_centro_costo.smn_centro_costo_id = ${fld:id}
	
