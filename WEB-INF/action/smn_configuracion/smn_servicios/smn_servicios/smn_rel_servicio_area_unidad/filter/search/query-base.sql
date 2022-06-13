select
	smn_base.smn_rel_servicio_area_unidad.smn_rel_servicio_area_unidad_id,
	smn_base.smn_servicios.svc_codigo ||' - '||smn_base.smn_servicios.svc_descripcion as svc_codigo_pl0,
	smn_base.smn_areas_servicios.ase_codigo || ' - ' || smn_base.smn_areas_servicios.ase_descripcion as smn_areas_servicios_rf,
	smn_base.smn_unidades_servicios.uns_codigo || ' - ' || smn_base.smn_unidades_servicios.uns_descripcion as smn_unidades_servicios_rf,
	smn_base.smn_centro_costo.cco_codigo || ' - ' || smn_base.smn_centro_costo.cco_descripcion_corta as smn_centro_costo_rf,
	smn_base.smn_rel_servicio_area_unidad.rsa_fecha_registro
from
	smn_base.smn_servicios
	left outer join smn_base.smn_rel_servicio_area_unidad on smn_base.smn_rel_servicio_area_unidad.smn_servicios_id = smn_base.smn_servicios.smn_servicios_id
	left outer join smn_base.smn_areas_servicios on smn_base.smn_areas_servicios.smn_areas_servicios_id = smn_base.smn_rel_servicio_area_unidad.smn_areas_servicios_rf
	left outer join smn_base.smn_unidades_servicios on smn_base.smn_unidades_servicios.smn_unidades_servicios_id = smn_base.smn_rel_servicio_area_unidad.smn_unidades_servicios_rf
	left outer join smn_base.smn_centro_costo on smn_base.smn_centro_costo.smn_centro_costo_id = smn_base.smn_rel_servicio_area_unidad.smn_centro_costo_rf
where
	smn_rel_servicio_area_unidad_id is not null 
	${filter}
order by
		smn_rel_servicio_area_unidad_id
