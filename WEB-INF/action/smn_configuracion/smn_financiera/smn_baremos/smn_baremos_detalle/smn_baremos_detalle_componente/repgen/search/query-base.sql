select
		smn_base.smn_baremos_detalle_componente.smn_baremos_detalle_componente_id,
	${field}
from
	smn_base.smn_baremos_detalle_componente
where
		smn_base.smn_baremos_detalle_componente.smn_baremos_detalle_componente_id is not null
	${filter}
	
	
