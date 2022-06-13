select
		smn_base.smn_unidades_servicios.smn_areas_servicios_id,
	smn_base.smn_unidades_servicios.uns_codigo,
	smn_base.smn_unidades_servicios.uns_descripcion,
	smn_base.smn_unidades_servicios.uns_fecha_registro
from
	smn_base.smn_unidades_servicios 
where
	smn_base.smn_unidades_servicios.smn_unidades_servicios_id = ${fld:id}
