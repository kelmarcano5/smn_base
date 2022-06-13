select
		smn_base.smn_tipo_unidad_medida.tum_codigo,
	smn_base.smn_tipo_unidad_medida.tum_descripcion,
	smn_base.smn_tipo_unidad_medida.tum_fecha_registro
from
	smn_base.smn_tipo_unidad_medida 
where
	smn_base.smn_tipo_unidad_medida.smn_tipo_unidad_medida_id = ${fld:id}
