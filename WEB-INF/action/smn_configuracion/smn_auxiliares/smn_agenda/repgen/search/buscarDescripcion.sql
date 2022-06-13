select
		smn_base.smn_agenda.age_descripcion
from
		smn_base.smn_agenda
where
		upper(smn_base.smn_agenda.age_descripcion) = upper(${fld:age_descripcion})
