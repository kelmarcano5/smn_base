select	
	case
		when smn_base.smn_agenda.age_dia_semana='LU' then '${lbl:b_monday}'
		when smn_base.smn_agenda.age_dia_semana='MA' then '${lbl:b_tuesday}'
		when smn_base.smn_agenda.age_dia_semana='MI' then '${lbl:b_wednesday}'
		when smn_base.smn_agenda.age_dia_semana='JU' then '${lbl:b_thursday}'
		when smn_base.smn_agenda.age_dia_semana='VI' then '${lbl:b_friday}'
		when smn_base.smn_agenda.age_dia_semana='SA' then '${lbl:b_saturday}'
		when smn_base.smn_agenda.age_dia_semana='DO' then '${lbl:b_sunday}'
	end as age_dia_semana_combo,
	case
		when smn_base.smn_agenda.age_jornada='AM' then '${lbl:b_schedule_am}'
		when smn_base.smn_agenda.age_jornada='PM' then '${lbl:b_schedule_pm}'
	end as age_jornada_combo,
	smn_base.smn_agenda.age_codigo,
	smn_base.smn_agenda.age_hora,
	smn_base.smn_agenda.age_descripcion,
	smn_base.smn_agenda.age_dia_semana,
	smn_base.smn_agenda.age_hora_desde,
	smn_base.smn_agenda.age_hora_hasta,
	smn_base.smn_agenda.age_localidad,
	smn_base.smn_agenda.age_jornada,
	smn_base.smn_agenda.age_frecuencia,
	smn_base.smn_agenda.age_idioma,
	smn_base.smn_agenda.age_usuario,
	smn_base.smn_agenda.age_fecha_registro,
	smn_base.smn_agenda.smn_agenda_id

from
	smn_base.smn_agenda
where
	smn_agenda_id is not null	
 	 	${filter}
order by 
	smn_agenda_id