select
	smn_base.smn_periodos.prd_codigo
from
	smn_base.smn_periodos
where
	upper(trim(smn_base.smn_periodos.prd_codigo)) = upper(trim(${fld:prd_codigo}))
