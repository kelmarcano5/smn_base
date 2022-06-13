select
		smn_base.smn_areas_servicios.smn_tipos_areas_id,
	smn_base.smn_areas_servicios.ase_codigo,
	smn_base.smn_areas_servicios.ase_descripcion,
	smn_base.smn_areas_servicios.ase_empresa,
	smn_base.smn_areas_servicios.ase_sucursal,
	smn_base.smn_areas_servicios.ase_unidad_negocio,
	smn_base.smn_areas_servicios.ase_fecha_registro
from
	smn_base.smn_areas_servicios 
where
	smn_base.smn_areas_servicios.smn_areas_servicios_id = ${fld:id}
