UPDATE smn_base.smn_usuarios SET
	smn_entidades_id=${fld:smn_entidades_id},
	usr_usuario_id=${fld:usr_usuario_id},
	usr_nombres=${fld:usr_nombres},
	usr_apellidos=${fld:usr_apellidos},
	usr_nacionalidad=${fld:usr_nacionalidad},
	usr_nro_doc_identidad=${fld:usr_nro_doc_identidad},
	usr_nro_id_fiscal=${fld:usr_nro_id_fiscal},
	usr_direccion=${fld:usr_direccion},
	usr_email=${fld:usr_email},
	usr_telefono_fijo=${fld:usr_telefono_fijo},
	usr_telefono_movil=${fld:usr_telefono_movil},
	usr_idioma='${def:locale}',
	usr_usuario='${def:user}',
	usr_fecha_registro={d '${def:date}'},
	usr_hora='${def:time}'

WHERE
	smn_usuarios_id=${fld:id}

