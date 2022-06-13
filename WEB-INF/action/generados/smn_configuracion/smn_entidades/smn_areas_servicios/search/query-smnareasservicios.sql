select	
	smn_base.smn_tipos_servicios.smn_tipos_servicios_id, 
	smn_base.smn_tipos_servicios.tsr_codigo as tsr_codigo_pl0,
	smn_base.smn_areas_servicios.smn_tipos_servicios_id,
	smn_base.smn_areas_servicios.ase_codigo,
	smn_base.smn_areas_servicios.ase_descripcion,
	smn_base.smn_areas_servicios.ase_empresa,
	smn_base.smn_areas_servicios.ase_sucursal,
	smn_base.smn_areas_servicios.ase_unidad_negocio,
	smn_base.smn_areas_servicios.ase_fecha_registro
from
	smn_base.smn_tipos_servicios,
	smn_base.smn_areas_servicios 
where
	smn_base.smn_tipos_servicios.smn_tipos_servicios_id=smn_base.smn_areas_servicios.smn_tipos_servicios_id 
order by 
	smn_base.smn_areas_servicios.smn_areas_servicios_id desc
