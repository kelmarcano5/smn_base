UPDATE smn_base.smn_tipo_unidad_medida SET
	tum_codigo=${fld:tum_codigo},
	tum_descripcion=${fld:tum_descripcion},
	tum_idioma='${def:locale}',
	tum_usuario='${def:user}',
	tum_fecha_registro={d '${def:date}'},
	tum_hora='${def:time}'

WHERE
	smn_tipo_unidad_medida_id=${fld:id}

