delete from 
	smn_base.smn_entidades_federales 
where 
	smn_base.smn_entidades_federales.smn_entidades_federales_id = ${fld:id}
and
	${fld:refid} is NULL
