select
	smn_base.smn_modulos.mod_nombre,
		smn_base.smn_documentos_generales.smn_documentos_generales_id,
	smn_base.smn_documentos_generales.dcg_codigo,
	smn_base.smn_documentos_generales.dcg_descripcion,
	smn_base.smn_documentos_generales.dcg_modulo_origen,
	smn_base.smn_documentos_generales.dcg_fecha_registro
	
from

	smn_base.smn_modulos,
	smn_base.smn_documentos_generales
where
	smn_base.smn_modulos.smn_modulos_id = smn_base.smn_documentos_generales.dcg_modulo_origen
