UPDATE smn_base.smn_proyecto SET
	pry_codigo=${fld:pry_codigo},
	pry_nombre=${fld:pry_nombre},
	smn_clase_auxiliar_rf=${fld:smn_clase_auxiliar_rf},
	smn_auxiliar_rf=${fld:smn_auxiliar_rf},
	pry_fecha_inicio=${fld:pry_fecha_inicio},
	pry_fecha_fin_estimada=${fld:pry_fecha_fin_estimada},
	pry_fecha_cierre=${fld:pry_fecha_cierre},
	pry_estatus=${fld:pry_estatus},
	pry_idioma='${def:locale}',
	pry_usuario='${def:user}',
	pry_fecha_registro={d '${def:date}'},
	pry_hora='${def:time}'

WHERE
	smn_proyecto_id=${fld:id}

