select
	smn_base.smn_clase_auxiliar.cla_nombre
from
	smn_base.smn_clase_auxiliar
where
	upper(trim(smn_base.smn_clase_auxiliar.cla_nombre)) = upper(trim(${fld:cla_nombre}))
