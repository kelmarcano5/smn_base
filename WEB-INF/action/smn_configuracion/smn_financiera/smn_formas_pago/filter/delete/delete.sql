delete from 
	smn_base.smn_formas_pago 
where 
	smn_base.smn_formas_pago.smn_formas_pago_id = ${fld:id}
and
	${fld:refid} is NULL
