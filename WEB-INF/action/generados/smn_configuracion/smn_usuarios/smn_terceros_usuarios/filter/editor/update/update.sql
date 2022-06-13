UPDATE smn_base.smn_terceros_usuarios SET
	smn_terceros_id=${fld:smn_terceros_id},
	tru_usuario_id=${fld:tru_usuario_id},
	tru_comunidad=${fld:tru_comunidad},
	tru_nombres=${fld:tru_nombres},
	tru_apellidos=${fld:tru_apellidos},
	tru_nacionalidad=${fld:tru_nacionalidad},
	tru_nro_doc_identidad=${fld:tru_nro_doc_identidad},
	tru_nro_id_fiscal=${fld:tru_nro_id_fiscal},
	tru_direccion=${fld:tru_direccion},
	tru_email=${fld:tru_email},
	tru_telefono_fijo=${fld:tru_telefono_fijo},
	tru_telefono_movil=${fld:tru_telefono_movil},
	tru_idioma='${def:locale}',
	tru_usuario='${def:user}',
	tru_fecha_registro={d '${def:date}'},
	tru_hora='${def:time}'

WHERE
	smn_terceros_usuarios_id=${fld:id}

