select
		smn_base.smn_clase_auxiliar.cla_codigo
from
		smn_base.smn_clase_auxiliar
where
		upper(smn_base.smn_clase_auxiliar.cla_codigo) = upper(${fld:cla_codigo})
