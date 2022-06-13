select
		smn_base.smn_incrementos.inc_codigo
from
		smn_base.smn_incrementos
where
		upper(smn_base.smn_incrementos.inc_codigo) = upper(${fld:inc_codigo})
