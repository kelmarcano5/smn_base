delete from 
	smn_base.smn_documentos_generales 
where 
	smn_base.smn_documentos_generales.smn_documentos_generales_id = ${fld:id}
and
	${fld:refid} is NULL
