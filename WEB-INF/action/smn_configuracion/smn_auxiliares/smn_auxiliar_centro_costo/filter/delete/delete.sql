delete from 
	smn_base.smn_auxiliar_centro_costo 
where 
	smn_base.smn_auxiliar_centro_costo.smn_auxiliar_centro_costo_id = ${fld:id}
and
	${fld:refid} is NULL
