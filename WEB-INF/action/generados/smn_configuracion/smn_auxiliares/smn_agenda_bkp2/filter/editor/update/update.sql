UPDATE smn_base.smn_agenda SET
	age_codigo=${fld:age_codigo},
	age_descripcion=${fld:age_descripcion},
	age_dia_semana=${fld:age_dia_semana},
	age_hora_desde=${fld:age_hora_desde},
	age_hora_hasta=${fld:age_hora_hasta},
	age_localidad=${fld:age_localidad},
	age_jornada=${fld:age_jornada},
	age_frecuencia=${fld:age_frecuencia},
	age_idioma='${def:locale}',
	age_usuario='${def:user}',
	age_fecha_registro={d '${def:date}'},
	age_hora='${def:time}'

WHERE
	smn_agenda_id=${fld:id}

