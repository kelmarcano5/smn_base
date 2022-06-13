select
	smn_base.smn_tipo_doc_oficial.tdo_codigo
from
	smn_base.smn_tipo_doc_oficial
where
	upper(trim(smn_base.smn_tipo_doc_oficial.tdo_codigo)) = upper(trim(${fld:tdo_codigo}))
