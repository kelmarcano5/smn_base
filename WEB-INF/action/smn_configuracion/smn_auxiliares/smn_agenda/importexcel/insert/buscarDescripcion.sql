select
	smn_base.smn_agenda.age_descripcion
from
	smn_base.smn_agenda
where
	upper(trim(smn_base.smn_agenda.age_descripcion)) = upper(trim(${fld:age_descripcion}))
