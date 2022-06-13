select
		smn_base.smn_agenda.smn_agenda_id,
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
	when smn_base.smn_agenda.age_jornada_desde='AM' then '${lbl:b_schedule_am}'
	when smn_base.smn_agenda.age_jornada_desde='PM' then '${lbl:b_schedule_pm}'
	end as age_jornada_desde_combo,
	case
	when smn_base.smn_agenda.age_jornada_hasta='AM' then '${lbl:b_schedule_am}'
	when smn_base.smn_agenda.age_jornada_hasta='PM' then '${lbl:b_schedule_pm}'
	end as age_jornada_hasta_combo,
	smn_base.smn_agenda.age_codigo,
	smn_base.smn_agenda.age_descripcion,
	smn_base.smn_agenda.age_dia_semana,
	smn_base.smn_agenda.age_hora_desde,
	smn_base.smn_agenda.age_jornada_desde,
	smn_base.smn_agenda.age_hora_hasta,
	smn_base.smn_agenda.age_jornada_hasta,
	smn_base.smn_agenda.age_localidad,
	smn_base.smn_agenda.age_fecha_registro,
		smn_base.smn_agenda.smn_agenda_id
from
	smn_base.smn_agenda
order by
			smn_base.smn_agenda.smn_agenda_id desc
