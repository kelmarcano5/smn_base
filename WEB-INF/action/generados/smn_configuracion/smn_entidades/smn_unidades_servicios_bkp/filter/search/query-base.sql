select	
	smn_base.smn_areas_servicios.smn_areas_servicios_id, 
	smn_base.smn_areas_servicios.ase_codigo as ase_codigo_pl0,
	smn_base.smn_unidades_servicios.smn_areas_servicios_id,
	smn_base.smn_unidades_servicios.uns_codigo,
	smn_base.smn_unidades_servicios.uns_descripcion,
	smn_base.smn_unidades_servicios.uns_centro_costo,
	smn_base.smn_unidades_servicios.uns_fecha_registro,
	smn_base.smn_unidades_servicios.smn_unidades_servicios_id

from
	smn_base.smn_areas_servicios,
	smn_base.smn_unidades_servicios
where
	smn_unidades_servicios_id is not null	
and 	smn_base.smn_areas_servicios.smn_areas_servicios_id=smn_base.smn_unidades_servicios.smn_areas_servicios_id 
	 	${filter}
order by 
	smn_unidades_servicios_id