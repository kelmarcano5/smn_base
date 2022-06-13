select
		smn_base.smn_conversion_unidad_medida.smn_conversion_unidad_medida_id,
	${field}
from
	smn_base.smn_conversion_unidad_medida
where
		smn_base.smn_conversion_unidad_medida.smn_conversion_unidad_medida_id is not null
	${filter}
	
	
