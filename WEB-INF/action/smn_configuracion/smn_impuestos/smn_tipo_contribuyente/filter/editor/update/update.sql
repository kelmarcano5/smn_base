UPDATE smn_base.smn_tipo_contribuyente SET
	tco_codigo=${fld:tco_codigo},
	tco_descripcion=${fld:tco_descripcion},
	tco_estatus=${fld:tco_estatus},
	tco_idioma='${def:locale}',
	tco_usuario='${def:user}',
	tco_fecha_registro={d '${def:date}'},
	tco_hora='${def:time}'

WHERE
	smn_tipo_contribuyente_id=${fld:id}

