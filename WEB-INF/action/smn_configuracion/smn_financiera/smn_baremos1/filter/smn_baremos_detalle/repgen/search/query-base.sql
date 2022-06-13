select
		smn_base.smn_baremos_detalle.smn_baremos_detalle_id,
	${field}
from
	smn_base.smn_baremos_detalle
where
		smn_base.smn_baremos_detalle.smn_baremos_detalle_id is not null
	${filter}
	
	
