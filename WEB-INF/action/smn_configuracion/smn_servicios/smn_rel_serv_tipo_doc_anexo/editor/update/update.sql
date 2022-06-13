UPDATE smn_base.smn_rel_serv_tipo_doc_anexo SET
	smn_servicios_id=${fld:smn_servicios_id},
	smn_tipo_doc_anexo_id=${fld:smn_tipo_doc_anexo_id},
	rst_idioma='${def:locale}',
	rst_usuario='${def:user}',
	rst_fecha_registro={d '${def:date}'},
	rst_hora='${def:time}'

WHERE
	smn_rel_serv_tipo_doc_anexo_id=${fld:id}

