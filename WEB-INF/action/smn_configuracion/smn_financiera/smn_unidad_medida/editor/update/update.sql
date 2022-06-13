UPDATE smn_base.smn_unidad_medida SET
	unm_codigo=${fld:unm_codigo},
	unm_descripcion=${fld:unm_descripcion},
	smn_tipo_unidad_medida_rf=${fld:smn_tipo_unidad_medida_rf},
	unm_idioma='${def:locale}',
	unm_usuario='${def:user}',
	unm_fecha_registro={d '${def:date}'},
	unm_hora='${def:time}'

WHERE
	smn_unidad_medida_id=${fld:id}

