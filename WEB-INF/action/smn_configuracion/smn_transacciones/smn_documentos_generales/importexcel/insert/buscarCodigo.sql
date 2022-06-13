select
	smn_base.smn_documentos_generales.dcg_codigo
from
	smn_base.smn_documentos_generales
where
	upper(trim(smn_base.smn_documentos_generales.dcg_codigo)) = upper(trim(${fld:dcg_codigo}))
