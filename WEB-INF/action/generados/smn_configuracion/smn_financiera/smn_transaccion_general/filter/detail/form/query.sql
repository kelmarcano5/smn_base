select
	smn_base.smn_transaccion_general.*
from 
	smn_base.smn_transaccion_general
where
	smn_transaccion_general_id = ${fld:id}
