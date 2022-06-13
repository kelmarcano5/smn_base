UPDATE smn_base.smn_unidades_negocios SET
	uen_codigo=${fld:uen_codigo},
	uen_nombre=${fld:uen_nombre},
	uen_responsable=${fld:uen_responsable},
	uen_direccion=${fld:uen_direccion},
	uen_telefono_fijo=${fld:uen_telefono_fijo},
	uen_telefono_movil=${fld:uen_telefono_movil},
	uen_email=${fld:uen_email},
	uen_idioma='${def:locale}',
	uen_usuario='${def:user}'
WHERE
	smn_base.smn_unidades_negocios.smn_unidades_negocios_id=${fld:id}

