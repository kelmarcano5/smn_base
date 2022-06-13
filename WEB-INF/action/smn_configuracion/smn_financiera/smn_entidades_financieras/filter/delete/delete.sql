delete from 
	smn_base.smn_entidades_financieras 
where 
	smn_base.smn_entidades_financieras.smn_entidades_financieras_id = ${fld:id}
and
	${fld:refid} is NULL
