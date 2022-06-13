select
		smn_base.smn_documentos_generales.dcg_codigo
from
		smn_base.smn_documentos_generales
where
		upper(smn_base.smn_documentos_generales.dcg_codigo) = upper(${fld:dcg_codigo})
