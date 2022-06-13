select
		smn_base.smn_corporaciones.crp_nombre
from
		smn_base.smn_corporaciones
where
		upper(trim(smn_base.smn_corporaciones.crp_nombre)) = upper(trim(${fld:crp_nombre}))
