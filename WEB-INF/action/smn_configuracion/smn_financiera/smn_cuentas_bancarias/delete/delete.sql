delete from 
	smn_base.smn_cuentas_bancarias 
where 
	smn_base.smn_cuentas_bancarias.smn_cuentas_bancarias_id = ${fld:id}
and
	${fld:refid} is NULL
