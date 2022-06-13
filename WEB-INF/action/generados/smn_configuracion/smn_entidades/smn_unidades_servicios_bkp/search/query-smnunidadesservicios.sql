select	
	smn_base.smn_areas_servicios.smn_areas_servicios_id, 
	smn_base.smn_areas_servicios.ase_codigo as ase_codigo_pl0,
	smn_base.smn_unidades_servicios.smn_areas_servicios_id,
	smn_base.smn_unidades_servicios.uns_codigo,
	smn_base.smn_unidades_servicios.uns_descripcion,
	smn_base.smn_unidades_servicios.uns_centro_costo,
	smn_base.smn_unidades_servicios.uns_fecha_registro

from
	smn_base.smn_areas_servicios,
	smn_base.smn_unidades_servicios 
where
	smn_base.smn_areas_servicios.smn_areas_servicios_id=smn_base.smn_unidades_servicios.smn_areas_servicios_id 

