UPDATE smn_base.smn_registros_usuarios SET
	rgu_tipo_doc_oficial=${fld:rgu_tipo_doc_oficial},
	rgu_num_doc_oficial=${fld:rgu_num_doc_oficial},
	rgu_nro_id_fiscal=${fld:rgu_nro_id_fiscal},
	rgu_nombres=${fld:rgu_nombres},
	rgu_apellidos=${fld:rgu_apellidos},
	rgu_tipo_registro=${fld:rgu_tipo_registro},
	rgu_email=${fld:rgu_email},
	rgu_idioma='${def:locale}',
	rgu_usuario='${def:user}',
	rgu_fecha_registro={d '${def:date}'},
	rgu_hora='${def:time}'

WHERE
	smn_registros_usuarios_id=${fld:id}

