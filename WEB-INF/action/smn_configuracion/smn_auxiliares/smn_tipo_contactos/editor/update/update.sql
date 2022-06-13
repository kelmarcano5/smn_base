UPDATE smn_base.smn_tipo_contactos SET
	tco_codigo=${fld:tco_codigo},
	tco_descripcion=${fld:tco_descripcion},
	tco_clase=${fld:tco_clase},
	tco_idioma='${def:locale}',
	tco_usuario='${def:user}',
	tco_fecha_registro={d '${def:date}'},
	tco_hora='${def:time}',
	tco_envia_mensaje=${fld:tco_envia_mensaje}

WHERE
	smn_tipo_contactos_id=${fld:id}

