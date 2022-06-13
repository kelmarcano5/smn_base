select
		smn_base.smn_tipo_doc_anexo.smn_tipo_doc_anexo_id,
	${field}
from
	smn_base.smn_tipo_doc_anexo
where
		smn_base.smn_tipo_doc_anexo.smn_tipo_doc_anexo_id is not null
	${filter}
	
	
