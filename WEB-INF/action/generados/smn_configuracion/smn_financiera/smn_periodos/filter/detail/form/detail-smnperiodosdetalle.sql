select
	smn_base.smn_periodos_detalle.*
from 
	smn_base.smn_periodos_detalle,
	smn_base.smn_periodos
where
	smn_base.smn_periodos_detalle.smn_periodos_id=smn_base.smn_periodos.smn_periodos_id and 
	smn_base.smn_periodos.smn_periodos_id=${fld:id}
