select
		smn_base.smn_agenda.age_codigo
from
		smn_base.smn_agenda
where
		upper(smn_base.smn_agenda.age_codigo) = upper(${fld:age_codigo})
