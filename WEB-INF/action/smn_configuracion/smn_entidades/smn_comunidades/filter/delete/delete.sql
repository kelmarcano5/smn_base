delete from 
	smn_base.smn_comunidades 
where 
	smn_base.smn_comunidades.smn_comunidades_id = ${fld:id}
and
	${fld:refid} is NULL
