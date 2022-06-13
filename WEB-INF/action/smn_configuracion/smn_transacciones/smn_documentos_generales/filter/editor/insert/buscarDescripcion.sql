select
		smn_base.smn_documentos_generales.dcg_descripcion
from
		smn_base.smn_documentos_generales
where
		upper(smn_base.smn_documentos_generales.dcg_descripcion) = upper(${fld:dcg_descripcion})
