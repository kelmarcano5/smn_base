delete from 
	smn_base.smn_parroquias 
where 
	smn_base.smn_parroquias.smn_parroquias_id = ${fld:id}
and
	${fld:refid} is NULL
