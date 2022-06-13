UPDATE smn_base.smn_documentos_generales SET
	dcg_codigo=${fld:dcg_codigo},
	dcg_descripcion=${fld:dcg_descripcion},
	dcg_modulo_origen=${fld:dcg_modulo_origen},
	dcg_idioma='${def:locale}',
	dcg_usuario='${def:user}',
	dcg_fecha_registro={d '${def:date}'},
	dcg_hora='${def:time}'

WHERE
	smn_documentos_generales_id=${fld:id}

