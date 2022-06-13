select
	smn_base.smn_modulos.mod_nombre,
	${field}
from
	smn_base.smn_modulos,
	smn_base.smn_documentos_generales
where
	smn_base.smn_modulos.smn_modulos_id = smn_base.smn_documentos_generales.dcg_modulo_origen and
		smn_base.smn_documentos_generales.smn_documentos_generales_id is not null
