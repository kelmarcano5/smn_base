select
		smn_base.smn_feriados.fer_codigo
from
		smn_base.smn_feriados
where
		upper(smn_base.smn_feriados.fer_codigo) = upper(${fld:fer_codigo})
