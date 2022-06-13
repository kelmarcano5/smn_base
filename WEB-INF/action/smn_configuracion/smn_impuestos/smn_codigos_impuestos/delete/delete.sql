delete from 
	smn_base.smn_codigos_impuestos 
where 
	smn_base.smn_codigos_impuestos.smn_codigos_impuestos_id = ${fld:id}
and
	${fld:refid} is NULL
