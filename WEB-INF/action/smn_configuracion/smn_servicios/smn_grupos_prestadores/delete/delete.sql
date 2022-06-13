delete from 
	smn_base.smn_grupos_prestadores 
where 
	smn_base.smn_grupos_prestadores.smn_grupos_prestadores_id = ${fld:id}
and
	${fld:refid} is NULL
