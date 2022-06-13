UPDATE smn_base.smn_edificacion SET
	edf_codigo=${fld:edf_codigo},
	edf_descripcion=${fld:edf_descripcion},
	edf_idioma='${def:locale}',
	edf_usuario='${def:user}',
	edf_fecha_registro={d '${def:date}'},
	edf_hora='${def:time}'

WHERE
	smn_edificacion_id=${fld:id}

