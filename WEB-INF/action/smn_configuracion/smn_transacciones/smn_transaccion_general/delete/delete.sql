delete from 
	smn_base.smn_transaccion_general 
where 
	smn_base.smn_transaccion_general.smn_transaccion_general_id = ${fld:id}
and
	${fld:refid} is NULL
