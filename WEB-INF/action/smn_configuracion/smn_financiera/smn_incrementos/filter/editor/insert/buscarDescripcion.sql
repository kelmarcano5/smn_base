select
		smn_base.smn_incrementos.inc_descripcion
from
		smn_base.smn_incrementos
where
		upper(smn_base.smn_incrementos.inc_descripcion) = upper(${fld:inc_descripcion})
