select
	smn_base.smn_areas_servicios.ase_descripcion,
	smn_base.smn_entidades.ent_descripcion_corta,
	smn_base.smn_sucursales.suc_nombre,
	smn_base.smn_unidades_negocios.uen_nombre,
	smn_base.smn_unidades_servicios.uns_descripcion,
	smn_base.smn_almacen.*
from
	smn_base.smn_almacen
	left outer join smn_base.smn_areas_servicios on smn_base.smn_areas_servicios.smn_areas_servicios_id = smn_base.smn_almacen.alm_area_servicio
	left outer join smn_base.smn_entidades on smn_base.smn_entidades.smn_entidades_id = smn_base.smn_almacen.alm_empresa
	left outer join smn_base.smn_sucursales on smn_base.smn_sucursales.smn_sucursales_id = smn_base.smn_almacen.alm_sucursal
	left outer join smn_base.smn_unidades_negocios on smn_base.smn_unidades_negocios.smn_unidades_negocios_id = smn_base.smn_almacen.alm_unidad_negocio
	left outer join smn_base.smn_unidades_servicios on smn_base.smn_unidades_servicios.smn_unidades_servicios_id = smn_base.smn_almacen.alm_unidad_servicio
where
	smn_almacen_id = ${fld:id}
