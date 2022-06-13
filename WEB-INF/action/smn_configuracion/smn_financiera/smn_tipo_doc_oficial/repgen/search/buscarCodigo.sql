select
		smn_base.smn_tipo_doc_oficial.tdo_codigo
from
		smn_base.smn_tipo_doc_oficial
where
		upper(smn_base.smn_tipo_doc_oficial.tdo_codigo) = upper(${fld:tdo_codigo})
