select
	smn_base.smn_modulos.mod_nombre,
	smn_base.smn_documentos_generales.dcg_codigo,
	smn_base.smn_documentos_generales.dcg_descripcion,
	smn_base.smn_documentos_generales.dcg_modulo_origen,
	smn_base.smn_documentos_generales.dcg_fecha_registro,
	smn_base.smn_documentos_generales.smn_documentos_generales_id
from
	smn_base.smn_modulos,
	smn_base.smn_documentos_generales
where
	smn_base.smn_documentos_generales.smn_documentos_generales_id is not null
and
	smn_base.smn_modulos.smn_modulos_id = smn_base.smn_documentos_generales.dcg_modulo_origen 
and
	smn_base.smn_documentos_generales.dcg_idioma = '${def:locale}'
and
	smn_base.smn_documentos_generales.dcg_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_documentos_generales.smn_documentos_generales_id desc
