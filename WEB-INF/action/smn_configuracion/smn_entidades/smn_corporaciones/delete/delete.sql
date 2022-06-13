delete from 
	smn_base.smn_corporaciones 
where 
	smn_base.smn_corporaciones.smn_corporaciones_id = ${fld:id}
and
	${fld:refid} is NULL

