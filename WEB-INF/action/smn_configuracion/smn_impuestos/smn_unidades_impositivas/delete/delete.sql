delete from 
	smn_base.smn_unidades_impositivas 
where 
	smn_base.smn_unidades_impositivas.smn_unidades_impositivas_id = ${fld:id}
and
	${fld:refid} is NULL
