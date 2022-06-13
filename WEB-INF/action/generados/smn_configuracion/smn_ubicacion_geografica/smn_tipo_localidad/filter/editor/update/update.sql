UPDATE smn_base.smn_tipo_localidad SET
	til_codigo=${fld:til_codigo},
	til_descripcion=${fld:til_descripcion},
	til_idioma='${def:locale}',
	til_usuario='${def:user}',
	til_fecha_registro={d '${def:date}'},
	til_hora='${def:time}'

WHERE
	smn_tipo_localidad_id=${fld:id}

