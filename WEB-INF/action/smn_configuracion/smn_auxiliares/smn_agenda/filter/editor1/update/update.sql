UPDATE smn_base.smn_agenda SET
	age_codigo=${fld:age_codigo},
	age_descripcion=${fld:age_descripcion},
	age_dia_semana=${fld:age_dia_semana},
	age_hora_desde=${fld:age_hora_desde},
	age_jornada_desde=${fld:age_jornada_desde},
	age_hora_hasta=${fld:age_hora_hasta},
	age_jornada_hasta=${fld:age_jornada_hasta},
	age_localidad=${fld:age_localidad},
	age_idioma='${def:locale}',
	age_usuario='${def:user}'
WHERE
	smn_base.smn_agenda.smn_agenda_id=${fld:id}

