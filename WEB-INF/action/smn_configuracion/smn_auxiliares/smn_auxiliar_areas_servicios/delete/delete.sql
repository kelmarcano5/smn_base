delete from 
	smn_base.smn_auxiliar_areas_servicios 
where 
	smn_base.smn_auxiliar_areas_servicios.smn_auxiliar_areas_servicios_id = ${fld:id}
and
	${fld:refid} is NULL
