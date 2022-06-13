UPDATE smn_base.smn_zona SET
	zon_codigo=${fld:zon_codigo},
	zon_descripcion=${fld:zon_descripcion},
	zon_estatus=${fld:zon_estatus},
	zon_fecha_vigencia='${def:time}',
	zon_idioma='${def:locale}',
	zon_usuario='${def:user}',
	zon_fecha_registro={d '${def:date}'},
	zon_hora='${def:time}'

WHERE
	smn_zona_id=${fld:id}

