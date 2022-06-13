select
		smn_base.smn_plantilla_detalle.smn_plantilla_detalle_id,
	${field}
from
	smn_base.smn_plantilla_detalle
where
		smn_base.smn_plantilla_detalle.smn_plantilla_detalle_id is not null
	${filter}
	
	
