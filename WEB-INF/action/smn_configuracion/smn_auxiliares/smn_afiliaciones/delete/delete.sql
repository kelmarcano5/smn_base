delete from 
	smn_base.smn_afiliaciones 
where 
	smn_base.smn_afiliaciones.smn_afiliaciones_id = ${fld:id}
and
	${fld:refid} is NULL
