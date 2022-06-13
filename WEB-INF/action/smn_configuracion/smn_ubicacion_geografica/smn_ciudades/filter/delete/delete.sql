delete from 
	smn_base.smn_ciudades 
where 
	smn_base.smn_ciudades.smn_ciudades_id = ${fld:id}
and
	${fld:refid} is NULL
