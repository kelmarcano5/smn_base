select
		smn_base.smn_tipo_doc_anexo.tda_codigo
from
		smn_base.smn_tipo_doc_anexo
where
		upper(smn_base.smn_tipo_doc_anexo.tda_codigo) = upper(${fld:tda_codigo})
