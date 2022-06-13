select
	smn_base.smn_entidades.ent_descripcion_corta,
	smn_base.smn_sucursales.suc_nombre,
	smn_base.smn_unidades_negocios.uen_nombre,
	smn_base.smn_areas_servicios.smn_areas_servicios_id,
	smn_base.smn_tipos_areas.tar_descripcion as tar_descripcion_pl0,
	smn_base.smn_areas_servicios.smn_areas_servicios_id,
	smn_base.smn_tipos_areas.tar_codigo || ' - ' || smn_base.smn_tipos_areas.tar_descripcion as smn_tipos_areas_id,
	smn_base.smn_areas_servicios.ase_codigo,
	smn_base.smn_areas_servicios.ase_descripcion,
	smn_base.smn_areas_servicios.ase_empresa,
	smn_base.smn_areas_servicios.ase_sucursal,
	smn_base.smn_areas_servicios.ase_unidad_negocio,
	smn_base.smn_areas_servicios.ase_fecha_registro
from
	smn_base.smn_areas_servicios
	inner join smn_base.smn_entidades on smn_base.smn_entidades.smn_entidades_id = smn_base.smn_areas_servicios.ase_empresa
	left outer join smn_base.smn_sucursales on smn_base.smn_sucursales.smn_sucursales_id = smn_base.smn_areas_servicios.ase_sucursal
	left outer join smn_base.smn_unidades_negocios on smn_base.smn_unidades_negocios.smn_unidades_negocios_id = smn_base.smn_areas_servicios.ase_unidad_negocio
	left outer join smn_base.smn_tipos_areas on smn_base.smn_tipos_areas.smn_tipos_areas_id = smn_base.smn_areas_servicios.smn_tipos_areas_id
where
	smn_base.smn_tipos_areas.smn_tipos_areas_id=smn_base.smn_areas_servicios.smn_tipos_areas_id
