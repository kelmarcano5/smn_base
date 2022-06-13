delete from 
	smn_base.smn_unidades_servicios 
where 
	smn_base.smn_unidades_servicios.smn_unidades_servicios_id = ${fld:id}
and
	${fld:refid} is NULL

