select
		smn_base.smn_rel_servicio_area_unidad.smn_rel_servicio_area_unidad_id,
	${field}
from
	smn_base.smn_rel_servicio_area_unidad
where
		smn_base.smn_rel_servicio_area_unidad.smn_rel_servicio_area_unidad_id is not null
	${filter}
	
	
