select
	smn_base.smn_agenda.smn_agenda_id,
	${field}
from
	smn_base.smn_agenda
where
	smn_base.smn_agenda.smn_agenda_id is not null
and
	smn_base.smn_agenda.age_idioma = '${def:locale}'
and
	smn_base.smn_agenda.age_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_agenda.smn_agenda_id desc
	
	
