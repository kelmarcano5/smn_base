delete from 
	smn_base.smn_feriados 
where 	
	smn_base.smn_feriados.smn_feriados_id = ${fld:id}
and
	${fld:refid} is NULL
