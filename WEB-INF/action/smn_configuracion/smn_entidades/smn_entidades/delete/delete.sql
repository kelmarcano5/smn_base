delete from 
	smn_base.smn_entidades 
where 
	smn_base.smn_entidades.smn_entidades_id = ${fld:id}
and
	${fld:refid} is NULL
