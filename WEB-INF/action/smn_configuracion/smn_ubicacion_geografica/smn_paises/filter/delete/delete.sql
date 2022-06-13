delete from 
	smn_base.smn_paises 
where 
	smn_paises_id = ${fld:id}
and
	${fld:refid} is NULL
