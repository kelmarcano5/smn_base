select
		smn_base.smn_clase_auxiliar.cla_nombre
from
		smn_base.smn_clase_auxiliar
where
		upper(smn_base.smn_clase_auxiliar.cla_nombre) = upper(${fld:cla_nombre})
