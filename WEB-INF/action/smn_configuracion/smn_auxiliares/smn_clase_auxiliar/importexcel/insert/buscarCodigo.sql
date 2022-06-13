select
	smn_base.smn_clase_auxiliar.cla_codigo
from
	smn_base.smn_clase_auxiliar
where
	upper(trim(smn_base.smn_clase_auxiliar.cla_codigo)) = upper(trim(${fld:cla_codigo}))
