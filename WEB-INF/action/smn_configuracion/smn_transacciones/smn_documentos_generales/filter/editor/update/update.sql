UPDATE smn_base.smn_documentos_generales SET
	dcg_codigo=${fld:dcg_codigo},
	dcg_descripcion=${fld:dcg_descripcion},
	dcg_modulo_origen=${fld:dcg_modulo_origen},
	dcg_idioma='${def:locale}',
	dcg_usuario='${def:user}'
WHERE
	smn_base.smn_documentos_generales.smn_documentos_generales_id=${fld:id}

