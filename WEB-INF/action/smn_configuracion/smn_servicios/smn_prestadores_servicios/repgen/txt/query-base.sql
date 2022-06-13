
select
	smn_base.smn_areas_servicios.ase_descripcion,
	smn_base.smn_auxiliar_prestador_servicio.aps_descripcion as smn_item,
	smn_base.smn_clase_auxiliar.cla_nombre,
	smn_base.smn_direccion.dir_descripcion,
	smn_base.smn_unidades_servicios.uns_descripcion,
	${field}
from
	smn_base.smn_prestadores_servicios
	inner join smn_base.smn_areas_servicios on smn_base.smn_areas_servicios.smn_areas_servicios_id = smn_base.smn_prestadores_servicios.prs_area_servicio
	left outer join smn_base.smn_auxiliar_prestador_servicio on smn_base.smn_auxiliar_prestador_servicio.smn_auxiliar_prestador_servicio_id = smn_base.smn_prestadores_servicios.prs_auxiliar
	left outer join smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_base.smn_prestadores_servicios.prs_clase_auxiliar
	inner join smn_base.smn_direccion on smn_base.smn_direccion.smn_direccion_id = smn_base.smn_prestadores_servicios.prs_direccion
	inner join smn_base.smn_unidades_servicios on smn_base.smn_unidades_servicios.smn_unidades_servicios_id = smn_base.smn_prestadores_servicios.prs_unidad_servicio
where
		smn_base.smn_prestadores_servicios.smn_prestadores_servicios_id is not null
	
