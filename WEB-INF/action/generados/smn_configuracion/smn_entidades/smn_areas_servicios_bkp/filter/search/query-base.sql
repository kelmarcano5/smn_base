select	
	smn_base.smn_tipos_servicios.smn_tipos_servicios_id, 
	smn_base.smn_tipos_servicios.tsr_codigo as tsr_codigo_pl0,
	smn_base.smn_areas_servicios.smn_tipos_servicios_id,
	smn_base.smn_areas_servicios.ase_codigo,
	smn_base.smn_areas_servicios.ase_descripcion,
	smn_base.smn_areas_servicios.ase_centro_costo,
	smn_base.smn_areas_servicios.ase_fecha_registro,
	smn_base.smn_areas_servicios.smn_areas_servicios_id

from
	smn_base.smn_tipos_servicios,
	smn_base.smn_areas_servicios
where
	smn_areas_servicios_id is not null	
and 	smn_base.smn_tipos_servicios.smn_tipos_servicios_id=smn_base.smn_areas_servicios.smn_tipos_servicios_id 
	 	${filter}
order by 
	smn_areas_servicios_id