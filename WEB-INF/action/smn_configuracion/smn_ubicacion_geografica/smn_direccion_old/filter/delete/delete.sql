delete from 
	smn_base.smn_direccion 
where 
	smn_base.smn_direccion.smn_direccion_id = ${fld:id} 
and
	${fld:refid} is NULL
