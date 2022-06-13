select	
	smn_base.smn_tipo_doc_oficial.tdo_codigo,
	smn_base.smn_tipo_doc_oficial.tdo_descripcion,
	smn_base.smn_tipo_doc_oficial.tdo_fecha_registro,
	smn_base.smn_tipo_doc_oficial.smn_tipo_doc_oficial_id

from
	smn_base.smn_tipo_doc_oficial
where
	smn_tipo_doc_oficial_id is not null	
 	 	${filter}
order by 
	smn_tipo_doc_oficial_id