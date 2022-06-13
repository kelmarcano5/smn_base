UPDATE smn_base.smn_unidades_negocios SET
	smn_entidades_id=${fld:smn_entidades_id},
	uen_codigo=${fld:uen_codigo},
	uen_nombre=${fld:uen_nombre},
	uen_responsable=${fld:uen_responsable},
	uen_direccion=${fld:uen_direccion},
	uen_telefono_fijo=${fld:uen_telefono_fijo},
	uen_telefono_movil=${fld:uen_telefono_movil},
	uen_email=${fld:uen_email},
	uen_idioma='${def:locale}',
	uen_usuario='${def:user}',
	uen_fecha_registro={d '${def:date}'},
	uen_hora='${def:time}'

WHERE
	smn_unidades_negocios_id=${fld:id}

