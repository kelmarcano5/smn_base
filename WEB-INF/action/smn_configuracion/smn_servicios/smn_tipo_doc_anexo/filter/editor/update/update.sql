UPDATE smn_base.smn_tipo_doc_anexo SET
	tda_codigo=${fld:tda_codigo},
	tda_descripcion=${fld:tda_descripcion},
	tda_estatus=${fld:tda_estatus},
	tda_vigencia=${fld:tda_vigencia},
	tda_idioma='${def:locale}',
	tda_usuario='${def:user}',
	tda_fecha_registro={d '${def:date}'},
	tda_hora='${def:time}'

WHERE
	smn_tipo_doc_anexo_id=${fld:id}

