select
	smn_base.smn_tipo_doc_oficial.*
from 
	smn_base.smn_tipo_doc_oficial
where
	smn_tipo_doc_oficial_id = ${fld:id}
