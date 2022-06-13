select	
	smn_base.smn_documentos_generales.dcg_codigo,
	smn_base.smn_documentos_generales.dcg_descripcion,
	smn_base.smn_documentos_generales.dcg_modulo_origen,
	smn_base.smn_documentos_generales.dcg_fecha_registro,
	smn_base.smn_documentos_generales.smn_documentos_generales_id

from
	smn_base.smn_documentos_generales
where
	smn_documentos_generales_id is not null	
 	 	${filter}
order by 
	smn_documentos_generales_id