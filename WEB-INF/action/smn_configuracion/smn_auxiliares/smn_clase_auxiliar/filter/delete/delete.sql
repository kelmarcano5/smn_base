delete from 
	smn_base.smn_clase_auxiliar 
where 
	smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = ${fld:id}
and
	${fld:refid} is NULL
