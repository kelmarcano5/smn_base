select
		smn_base.smn_periodos.prd_codigo
from
		smn_base.smn_periodos
where
		upper(smn_base.smn_periodos.prd_codigo) = upper(${fld:prd_codigo})
