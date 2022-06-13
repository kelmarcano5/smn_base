select
	smn_base.smn_periodos.*
from 
	smn_base.smn_periodos
where
	smn_base.smn_periodos.smn_periodos_id = ${fld:id}
