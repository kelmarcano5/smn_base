select
	smn_base.smn_documentos_generales.dcg_descripcion
from
	smn_base.smn_documentos_generales
where
	upper(trim(smn_base.smn_documentos_generales.dcg_descripcion)) = upper(trim(${fld:dcg_descripcion}))
