select
	smn_base.smn_feriados.fer_codigo
from
	smn_base.smn_feriados
where
	upper(trim(smn_base.smn_feriados.fer_codigo)) = upper(trim(${fld:fer_codigo}))
