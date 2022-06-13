UPDATE smn_base.smn_clasificacion_abc SET
	clf_codigo=${fld:clf_codigo},
	clf_descripcion=${fld:clf_descripcion},
	clf_ponderacion=${fld:clf_ponderacion},
	clf_idioma='${def:locale}',
	clf_usuario='${def:user}',
	clf_fecha_registro={d '${def:date}'},
	clf_hora='${def:time}'

WHERE
	smn_clasificacion_abc_id=${fld:id}

