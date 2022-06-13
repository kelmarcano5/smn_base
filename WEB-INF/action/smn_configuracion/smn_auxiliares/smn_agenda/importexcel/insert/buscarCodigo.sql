select
	smn_base.smn_agenda.age_codigo
from
	smn_base.smn_agenda
where
	upper(trim(smn_base.smn_agenda.age_codigo)) = upper(trim(${fld:age_codigo}))
