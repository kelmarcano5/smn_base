select
		smn_base.smn_unidad_medida.smn_unidad_medida_id,
	smn_base.smn_unidad_medida.unm_codigo,
	smn_base.smn_unidad_medida.unm_descripcion,
	smn_base.smn_tipo_unidad_medida.tum_codigo||'-'||smn_base.smn_tipo_unidad_medida.tum_descripcion as smn_tipo_unidad_medida_rf,
	smn_base.smn_unidad_medida.unm_fecha_registro
	
from
	smn_base.smn_unidad_medida,
	smn_base.smn_tipo_unidad_medida

	
