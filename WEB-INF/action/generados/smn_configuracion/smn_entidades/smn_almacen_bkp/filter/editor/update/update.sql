UPDATE smn_base.smn_almacen SET
	alm_codigo=${fld:alm_codigo},
	alm_nombre=${fld:alm_nombre},
	alm_idioma='${def:locale}',
	alm_usuario='${def:user}',
	alm_fecha_registro={d '${def:date}'},
	alm_hora='${def:time}'

WHERE
	smn_almacen_id=${fld:id}

