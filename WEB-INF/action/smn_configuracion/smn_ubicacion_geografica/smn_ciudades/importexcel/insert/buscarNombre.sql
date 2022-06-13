select
		smn_base.smn_ciudades.ciu_nombre_largo
from
		smn_base.smn_ciudades
where
		upper(trim(smn_base.smn_ciudades.ciu_nombre_largo)) = upper(trim(${fld:ciu_nombre_largo}))
