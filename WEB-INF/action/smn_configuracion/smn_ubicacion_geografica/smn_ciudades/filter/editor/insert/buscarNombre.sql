select
		smn_base.smn_ciudades.ciu_nombre_largo
from
		smn_base.smn_ciudades
where
		upper(smn_base.smn_ciudades.ciu_nombre_largo) = upper(${fld:ciu_nombre_largo})
