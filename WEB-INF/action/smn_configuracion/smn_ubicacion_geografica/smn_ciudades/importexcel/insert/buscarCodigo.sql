select
		smn_base.smn_ciudades.ciu_codigo
from
		smn_base.smn_ciudades
where
		upper(trim(smn_base.smn_ciudades.ciu_codigo)) = upper(trim(${fld:ciu_codigo}))
