delete from 
	smn_base.smn_zonas_postales 
where 
	smn_base.smn_zonas_postales.smn_zonas_postales_id = ${fld:id}
and
	${fld:refid} is NULL
