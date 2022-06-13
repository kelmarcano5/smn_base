select
		smn_base.smn_vencimiento_detalle.smn_vencimiento_detalle_id,
	${field}
from
	smn_base.smn_vencimiento_detalle
where
		smn_base.smn_vencimiento_detalle.smn_vencimiento_detalle_id is not null
	${filter}
	
	
