UPDATE smn_base.smn_auxiliar_contacto SET
	acn_telefono_fijo=${fld:acn_telefono_fijo},
	acn_telefono_movil=${fld:acn_telefono_movil},
	acn_email=${fld:acn_email},
	acn_facebook=${fld:acn_facebook},
	acn_linkedin=${fld:acn_linkedin},
	acn_twitter=${fld:acn_twitter},
	acn_swift=${fld:acn_swift},
	acn_idioma='${def:locale}',
	acn_usuario='${def:user}',
	acn_fecha_registro={d '${def:date}'},
	acn_hora='${def:time}'

WHERE
	smn_auxiliar_contacto_id=${fld:id}

