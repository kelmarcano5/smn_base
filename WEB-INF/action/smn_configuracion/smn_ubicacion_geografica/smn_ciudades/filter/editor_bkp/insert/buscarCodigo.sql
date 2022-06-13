select
		smn_base.smn_ciudades.ciu_codigo
from
		smn_base.smn_ciudades
where
		upper(smn_base.smn_ciudades.ciu_codigo) = upper(${fld:ciu_codigo})
